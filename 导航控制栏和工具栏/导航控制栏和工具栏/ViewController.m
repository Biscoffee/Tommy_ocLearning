//
//  ViewController.m
//  导航控制栏和工具栏
//
//  Created by 吴桐 on 2025/5/29.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];

    // 设置导航栏样式（已存在）
    UINavigationBarAppearance* apperance = [[UINavigationBarAppearance alloc] init];
    apperance.backgroundColor = [UIColor whiteColor];
    apperance.shadowImage = [[UIImage alloc] init];
    apperance.shadowColor = nil;
    self.title = @"title";
    self.navigationController.navigationBar.tintColor = [UIColor purpleColor];
    self.navigationController.navigationBar.standardAppearance = apperance;
    self.navigationController.navigationBar.scrollEdgeAppearance = apperance;
    self.navigationController.navigationBar.hidden = NO;
    self.navigationController.navigationBarHidden = NO;

    // ✅ 工具栏设置代码开始
    self.navigationController.toolbarHidden = NO;
    self.navigationController.toolbar.translucent = NO;

    UIBarButtonItem *btn1 = [[UIBarButtonItem alloc] initWithTitle: @"left" style: UIBarButtonItemStylePlain target: nil action: nil];
    UIBarButtonItem *btn2 = [[UIBarButtonItem alloc] initWithTitle: @"right" style: UIBarButtonItemStylePlain target: self action: @selector(press)];

    UIButton *btnC = [UIButton buttonWithType: UIButtonTypeCustom];
    [btnC setImage: [UIImage imageNamed: @"1.jpg"] forState: UIControlStateNormal];
    btnC.frame = CGRectMake(0, 0, 60, 60);
    UIBarButtonItem *btn3 = [[UIBarButtonItem alloc] initWithCustomView: btnC];

    UIBarButtonItem *btnF2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem: UIBarButtonSystemItemFlexibleSpace target: nil action: nil];

    NSArray *arrayBtn = @[btn1, btnF2, btn3, btnF2, btn2];
    self.toolbarItems = arrayBtn;
    // ✅ 工具栏设置代码结束
}

@end
