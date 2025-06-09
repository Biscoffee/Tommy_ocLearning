//
//  ViewController.m
//  UIButton
//
//  Created by 吴桐 on 2025/5/22.
//

#import "ViewController.h"
 
@interface ViewController ()
 
@end
 
@implementation ViewController
static int num = 0;
- (void) creatImageButton {
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(10, 300, 150, 150);
    UIImage* icon1 = [UIImage imageNamed:@"btn02.jpg"];//设置路径
    UIImage* icon2 = [UIImage imageNamed:@"btn03.jpg"];
    [btn setImage:icon1 forState:UIControlStateNormal];
    [btn setImage:icon2 forState:UIControlStateHighlighted];
    [self.view addSubview:btn];
}




//Button事件：-----------------------------
- (void) creatBtn {
    //创建一个圆角按钮
    UIButton *btn2 = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    
    btn2.frame = CGRectMake(100, 600, 300, 100);
    
    [btn2 setTitle: @"❤️pp小徐🤤❤️" forState: UIControlStateNormal];
    
    btn2.backgroundColor = [UIColor systemPinkColor];
    [btn2 setTitleShadowColor: [UIColor redColor] forState: UIControlStateNormal];
    [btn2 setTitleShadowOffset: CGSizeMake(4, 4)];
    [btn2 setTitleColor: [UIColor orangeColor] forState: UIControlStateNormal];
    [btn2 setTitleColor: [UIColor whiteColor] forState: UIControlStateHighlighted];
    btn2.titleLabel.font = [UIFont systemFontOfSize: 36];
    
    //向按钮添加事件：传入了三个参数：
    //第一个参数
    //第二个参数传入一个函数对象，当按钮满足第三个参数的条件的时候，调用函数
    //第三个参数是事件处理函数，此处的UIControlEventTouchUpInside是指当手指离开屏幕时并且手指的离开位置在屏幕范围内触发事件函数，一般这种按钮对于用户是按上了有反悔的机会
    //还有一个方法是叫UIControlEventTouchDown，它是只要手指触碰到了按钮就直接触发函数
    //还有一个方法是叫UIControlEventTouchOutside，和indide相反，它是只有手指按下并移动到按钮外才会触发
    [btn2 addTarget: self action: @selector(pressBtn) forControlEvents: UIControlEventTouchUpInside];
    
    [self.view addSubview: btn2];
}
 
//通过传入的参数对两个按钮的结果做区分
- (void) press02: (UIButton*) btn {
    if (btn.tag == 123) {
        NSLog(@"按下了按钮1");
    }
    if (btn.tag == 456) {
        NSLog(@"按下了按钮2");
    }
}
 
- (void) pressBtn {
    if (num < 10) {
        NSLog(@"你摸了摸小徐的头～");
        num++;
    } else {
        NSLog(@"小徐酱不想被摸摸头了喔～");
    }
    
}
 
- (void)viewDidLoad {
    [super viewDidLoad];
    
   // [self createUIButton];
   // [self creatUIRectButton];
    [self creatImageButton];
//    [self createImageButton];
//    [self creatBtn];
}
 
 
@end
