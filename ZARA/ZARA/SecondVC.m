//
//  SecondVC.m
//  ZARA
//
//  Created by 吴桐 on 2025/6/4.
//

#import "SecondVC.h"

@interface SecondVC () <UIScrollViewDelegate>

@end

@implementation SecondVC

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *searchIcon = [UIImage systemImageNamed:@"magnifyingglass"];
    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"发现"
                                                     image:searchIcon
                                             selectedImage:searchIcon];
    
//    CGFloat width = self.view.bounds.size.width;
//    CGFloat height = self.view.bounds.size.height;
    
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    CGFloat height = width * 16.0 / 9.0;
    
    self.segControl = [[UISegmentedControl alloc] initWithItems:@[@"男装", @"箱包", @"女装"]];
    self.segControl.frame = CGRectMake(20, 65, width - 40, 30);
    self.segControl.selectedSegmentIndex = 1;
    self.segControl.backgroundColor = [UIColor systemGray6Color];
    self.segControl.selectedSegmentTintColor = [UIColor systemBlueColor];
    [self.segControl bringSubviewToFront:self.page];
//    [self.segControl setTitleTextAttributes:@{NSForegroundColorAttributeName: UIColor.blackColor} forState:UIControlStateNormal];
//    [self.segControl setTitleTextAttributes:@{NSForegroundColorAttributeName: UIColor.whiteColor} forState:UIControlStateSelected];
    [self.segControl addTarget:self action:@selector(segmentChanged:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:self.segControl];

    
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 100, width, height)];
    self.scrollView.pagingEnabled = YES;
    NSArray* photos = @[@"ph3.jpg", @"ph1.jpg", @"ph2.jpg", @"ph3.jpg", @"ph1.jpg"];
    self.scrollView.contentSize = CGSizeMake(width * photos.count, height);
    self.scrollView.delegate = self;
    self.scrollView.showsHorizontalScrollIndicator = NO;
    [self.view addSubview:self.scrollView];
    for (int i = 0; i < photos.count; i++) {
        UIImageView *imgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:photos[i]]];
        imgView.frame = CGRectMake(width * i, 0, width, height);
        imgView.contentMode = UIViewContentModeScaleAspectFill;
        imgView.clipsToBounds = YES;
        imgView.userInteractionEnabled = YES;
        imgView.tag = 200 + i;
        
//        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(bannerTapped:)];
//        [imgView addGestureRecognizer:tap];
        [self.scrollView addSubview:imgView];
    }
    self.scrollView.contentOffset = CGPointMake(width, 0); // 起始页
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(autoScroll) userInfo:nil repeats:YES];
    
}

- (void)autoScroll {
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    [self.scrollView setContentOffset:CGPointMake(self.scrollView.contentOffset.x + width, 0) animated:YES];
}

- (void)pageChanged:(UIPageControl *)sender {
    NSInteger page = sender.currentPage;
    NSLog(@"%ld", page);
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    [self.scrollView setContentOffset:CGPointMake((page + 1) * width, 0) animated:YES];
}

- (void)segmentChanged:(UISegmentedControl *)sender {
    CGFloat width = self.scrollView.bounds.size.width;
    NSInteger index = sender.selectedSegmentIndex;
    [self.scrollView setContentOffset:CGPointMake(width * index, _scrollView.contentOffset.y) animated:YES];
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    NSLog(@"scrollView 已停止滑动");
    CGFloat offsetX = scrollView.contentOffset.x;
    CGFloat width = self.view.frame.size.width;
    NSInteger page = offsetX / width;
    self.segControl.selectedSegmentIndex = page - 1;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    CGFloat offsetX = scrollView.contentOffset.x;
    CGFloat totalWidth = scrollView.contentSize.width;

    if (offsetX >= totalWidth - screenWidth) {
            [scrollView setContentOffset:CGPointMake(screenWidth, 0) animated:NO];
            self.page.currentPage = 0;
            self.segControl.selectedSegmentIndex = 0; // 关键修复：重置后同步 segControl
        } else if (offsetX <= 0) {
            [scrollView setContentOffset:CGPointMake(totalWidth - 2 * screenWidth, 0) animated:NO];
            self.page.currentPage = 2;
            self.segControl.selectedSegmentIndex = 2; // 关键修复：重置后同步 segControl
        } else {
            NSInteger currentPage = (offsetX / screenWidth) - 1;
            self.page.currentPage = currentPage;
            // 此处不再更新 segControl，避免频繁变化导致冲突
        }

    NSInteger index = offsetX / screenWidth + 0.5;
    if (index >= 1 && index <= 3) { // 只同步中间3页
        self.segControl.selectedSegmentIndex = index - 1;
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
