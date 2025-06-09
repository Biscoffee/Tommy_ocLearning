//
//  ViewController.m
//  UIScollView
//
//  Created by 吴桐 on 2025/5/27.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>

@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // 创建滚动视图
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    scrollView.backgroundColor = [UIColor blackColor];
    scrollView.delegate = self;

    // 设置缩放比例
    scrollView.minimumZoomScale = 1.0;
    scrollView.maximumZoomScale = 4.0;

    // 加载图片
    UIImage *image = [UIImage imageNamed:@"微信图片_20250515214344_14.jpg"];

    // 创建图片视图
    self.imageView = [[UIImageView alloc] initWithImage:image];
    self.imageView.frame = self.view.bounds;
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;

    // 设置内容区域与图片大小一致
    scrollView.contentSize = self.imageView.frame.size;

    [scrollView addSubview:self.imageView];
    [self.view addSubview:scrollView];
}

// 返回可缩放的视图
- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return self.imageView;
}

@end
