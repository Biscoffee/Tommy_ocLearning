//
//  ViewController.m
//  定时器与视图移动
//
//  Created by 吴桐 on 2025/6/1.
//

#import "ViewController.h"
//
//@interface ViewController ()
//@property (nonatomic, strong) NSTimer *timeView;
//@end
//
@implementation ViewController
 
 
- (void)viewDidLoad {
    [super viewDidLoad];
    //设置颜色透明度
    self.view.backgroundColor = [UIColor colorWithRed: 0.1 green: 0.3 blue: 0.5 alpha: 0.8];
    //启动定时器按钮
    UIButton *btn = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(100, 100, 180, 140);
    btn.backgroundColor = [UIColor colorWithRed:0.2 green:0.7 blue:0.7 alpha:1];
    [btn setTitle: @"启动定时器" forState: UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize: 24];
    btn.tintColor = [UIColor blueColor];
    //绑定点击事件
    [btn addTarget: self action: @selector(pressStart) forControlEvents: UIControlEventTouchUpInside];
    //添加到视图
    [self.view addSubview: btn];
    
    UIButton *stopBtn = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    stopBtn.frame = CGRectMake(100, 300, 180, 140);
    stopBtn.backgroundColor = [UIColor colorWithRed: 0.79 green: 0.29 blue: 0.71 alpha: 1];
    [stopBtn setTitle: @"停止定时器" forState: UIControlStateNormal];
    stopBtn.titleLabel.font = [UIFont systemFontOfSize: 24];
    stopBtn.tintColor = [UIColor orangeColor];
    [stopBtn addTarget: self action: @selector(pressStop) forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview: stopBtn];
    //创建一个橙色视图，tag=101方便后续查找
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = [UIColor orangeColor];
    //为view对象设置标签值
    view.tag = 101;
    [self.view addSubview: view];
}


- (void) pressStart {
    //NSTimer的类方法创建一个定时器并启动，该定时器传入五个参数
    //第一个参数指每隔多少秒执行一次事件函数
    //第二个参数表示实现参数的对象
    //第三个参数表示事件函数
    //第四个参数表示可以为定时器函数传入一个函数，无参数可以传nil
    //第五个参数表示该定时器是否重复操作，YES则重复，NO则仅一次
    //返回值为一个新建好的定时器对象
    if (_timeView != nil) //[_timeView setFireDate:[NSDate dateWithTimeIntervalSinceNow:0.1]];
        return;
    else {
        _timeView = [NSTimer scheduledTimerWithTimeInterval: 0.001 target: self selector: @selector(updateTimer:) userInfo: @"北京" repeats: YES];
    }
}
 
//事件函数
//可以将定时器本身作为参数传入
- (void) updateTimer: (NSTimer*) timer {
    NSLog(@"六朝古都！%@", timer.userInfo);
    UIView *view = [self.view viewWithTag: 101];
    //修改视图位置（每次x，y增加0.1）
    view.frame = CGRectMake(view.frame.origin.x + 0.1, view.frame.origin.y + 0.1, 80, 80);
}
 
- (void) pressStop {
    //停止定时器
    if (_timeView != nil) {
        [_timeView invalidate];//让定时器失效
        _timeView = nil;  //非常重要 不加会导致暂停后不能重新在原来进度处启动
    }
}
 
@end
