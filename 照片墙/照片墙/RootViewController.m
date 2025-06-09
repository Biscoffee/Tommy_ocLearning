//
//  RootViewController.m
//  照片墙
//
//  Created by 吴桐 on 2025/6/3.
//

#import "RootViewController.h"
#import "ImageViewController.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"照片墙";
    self.view.backgroundColor = [UIColor orangeColor];
    self.navigationController.navigationBar.translucent = YES;
    
    UIScrollView* sv = [[UIScrollView alloc] init];
    sv.frame = CGRectMake(5, 10, 394, 852);
    sv.contentSize = CGSizeMake(394, 852*1.5);
    
    sv.userInteractionEnabled = YES;
    
    for (int i = 0; i < 8; i++) {
        NSString* strName = [NSString stringWithFormat:@"image%d",i + 1];
        UIImage* image = [UIImage imageNamed:strName];
        UIImageView* iView = [[UIImageView alloc] initWithImage:image];
        
        iView.frame = CGRectMake(10 + (i % 3) * 125, (i / 3) * 165, 110, 150);
        [sv addSubview:iView];
        iView.userInteractionEnabled = YES;
        
        UITapGestureRecognizer* tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pressTap)];
        tap.numberOfTapsRequired = 1;
        tap.numberOfTouchesRequired = 1;
        
        [iView addGestureRecognizer:tap];
        iView.tag = 101 + i;
    }
    [self.view addSubview:sv];
    
}

- (void)pressTap: (UITapGestureRecognizer*)tap {
    UIImageView *imageView = (UIImageView*)tap.view;
    
    //创建显示视图控制器
    ImageViewController *imageShow = [[ImageViewController alloc] init];
    //tag在一些时候可以做为索引，例如这里就可以做为图片的位置数
    imageShow.imageTag = imageView.tag;
    
    //推入导航栏
    [self.navigationController pushViewController: imageShow animated: YES];
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
