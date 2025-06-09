//
//  ViewController.m
//  UIViewController
//
//  Created by 吴桐 on 2025/5/24.
//

#import "ViewController.h"
#import "ViewC02.h"

@interface ViewController ()

@end

@implementation ViewController

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    ViewC02* v2 = [[ViewC02 alloc] init];
    
    //显示一个新的视图控制器界面到屏幕
    //该函数会穿入三个参数：第一个参数指新的控制器对象
    //第二个参数指是否使用动画切换效果
    //第三个参数指切换结束后是否调用block块操作，不需要为nil
    [self presentViewController:v2 animated:YES completion:nil];
    [self.navigationController pushViewController:v2 animated:YES];
}


//当视图控制器第一次被加载显示视图的时，调用此函数
//布局初始化视图来使用，初始化资源使用
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blueColor];
    NSLog(@"viewDidLoad第一次加载视图");
    
    UIView* view = [[UIView alloc] init];
    view.frame = CGRectMake(100, 100, 100, 200);
    view.backgroundColor = [UIColor orangeColor];
    [self.view addSubview: view];
    // Do any additional setup after loading the view.
//    功能：
//        •    该方法在控制器的视图第一次加载时调用，只执行一次。
//        •    设置控制器背景为蓝色
//        •    创建一个橙色的矩形 UIView 并添加到屏幕

}

-(void) viewWillAppear:(BOOL)animated {
    NSLog(@"视图即将显示");
}

-(void) viewDidAppear:(BOOL)animated {
    NSLog(@"视图已显示");
}
-(void) viewDidDisappear:(BOOL)animated {
    NSLog(@"视图已消失");
}
@end
