//
//  ViewController.m
//  UIView
//
//  Created by 吴桐 on 2025/5/23.
//

#import "ViewController.h"

@interface ViewController ()

@end


@implementation ViewController

//所有看到的对象全部都是UIView的子类
//- (void)viewDidLoad {
//    [super viewDidLoad];
//    UIView* view = [[UIView alloc] init];
//    //设置一个位置
//    view.frame = CGRectMake(10, 100, 230, 70);
//    view.backgroundColor = [UIColor blueColor];
//    self.view.backgroundColor = [UIColor greenColor];
//    [self.view addSubview:view];//父视图添加子视图
//    //view.hidden = YES为不显示
//    view.opaque = YES;//是否显示不透明
//    view.alpha = 0.3;
//    //1不透明
//    //0透明
//     //将新建的视图显示到屏幕上
//    //子视图会受到父视图的管理
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView* view = [[UIView alloc] init];
    //设置一个位置
    view.frame = CGRectMake(100, 100, 150, 150);
    view.backgroundColor = [UIColor blueColor];
    [self.view addSubview:view];//父视图添加子视图
    
    UIView* view1 = [[UIView alloc] init];
    //设置一个位置
    view1.frame = CGRectMake(125, 125, 150, 150);
    view1.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:view1];//父视图添加子视图
    
    UIView* view2 = [[UIView alloc] init];
    //设置一个位置
    view2.frame = CGRectMake(150, 150, 150, 150);
    view2.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:view2];//父视图添加子视图
    //[self.view bringSubviewToFront:view];//将视图跳涨到最前面
    //[self.view sendSubviewToBack:view2];//调整到最后面
    UIView* viewfront = self.view.subviews[0];
    if (viewfront == view) {
        NSLog(@"dddd");
    }
    
}


@end

