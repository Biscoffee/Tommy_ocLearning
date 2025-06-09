//
//  ViewController.m
//  UISwitch
//
//  Created by 吴桐 on 2025/5/28.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //创建一个继承于UIView的开关对象
    _myswitch = [[UISwitch alloc] init];
    //UISwitch控件的位置X，Y可以改变，当大小无法改变，后两个数字没用
    _myswitch.frame = CGRectMake(150, 200, 80, 40);
    
    [_myswitch setOn:YES animated:NO];
    [_myswitch setOnTintColor:[UIColor colorWithRed:0.5 green:0.2 blue:0.4 alpha:0.7]];
    [_myswitch addTarget:self action:@selector(pressA) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_myswitch];
}

-(void) pressA {
    _myTimer = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(pressB) userInfo:@"一只酸奶牛" repeats:YES];
}

-(void) pressB {
    NSLog(@"喝喝喝!%@", _myTimer.userInfo);
}



@end
