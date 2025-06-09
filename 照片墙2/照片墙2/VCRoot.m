//
//  VCRoot.m
//  照片墙2
//
//  Created by 吴桐 on 2025/6/4.
//

#import "VCRoot.h"
#import "ShowImage.h"
@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"照片墙";
    self.view.backgroundColor = [UIColor whiteColor];
  //设置导航栏的透明度
    self.navigationController.navigationBar.translucent = YES;
  //设置导航栏样式
    UINavigationBarAppearance* app = [[UINavigationBarAppearance alloc] init];
    app.backgroundColor = [UIColor whiteColor];
    app.shadowImage = [[UIImage alloc] init];
    app.shadowColor = nil;
  
    self.navigationController.navigationBar.standardAppearance = app;
    self.navigationController.navigationBar.scrollEdgeAppearance = app;
    
  //创建一个滑动视图
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    UIScrollView* sv = [[UIScrollView alloc] initWithFrame:screenBounds];
    sv.contentSize = CGSizeMake(screenBounds.size.width, screenBounds.size.height * 1.5);
  //通过一个for循环将图片添加到我们的滑动视图上面
    for (int i = 0; i < 9; i++) {
        NSString* strName = [NSString stringWithFormat:@"image%d.jpg", i + 1];
        UIImage* image = [UIImage imageNamed:strName];
        UIImageView* iView = [[UIImageView alloc] initWithImage: image];
        iView.frame = CGRectMake(15 + (i % 3) * 125, 15 + (i / 3) * 165 , 120, 130);
        [sv addSubview:iView];
        iView.userInteractionEnabled = YES;
        UITapGestureRecognizer* tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(press:)];
        tap.numberOfTapsRequired = 1;
        tap.numberOfTouchesRequired = 1;
        [iView addGestureRecognizer:tap];
        iView.tag = 101 + i;
        [sv addSubview:iView];
    }
    [self.view addSubview:sv];
    
    // Do any additional setup after loading the view.
}
- (void) press:(UITapGestureRecognizer*) tap {
    UIImageView* imageView = (UIImageView*) tap.view;
    //创建显示的视图控制器
    ShowImage* imageShow = [[ShowImage alloc] init];
    //点击的图像视图赋值
    imageShow.imageTag = imageView.tag;
    imageShow.image = imageView.image;
    //将控制器推出
    [self.navigationController pushViewController:imageShow animated:YES];
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

