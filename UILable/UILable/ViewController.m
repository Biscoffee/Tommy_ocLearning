//
//  ViewController.m
//  UILable
//
//  Created by 吴桐 on 2025/5/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
// 创建ui控件函数
-(void) createUI {
    //定义并创建一个uilabei对象
    //UILabel可以显示在屏幕上并且可以显示文字的一种UI
    UILabel* label = [[UILabel alloc]init];
    //显示文字，赋值
    label.text = @"RDFZ";
    //显示位置
    label.frame = CGRectMake(10, 400, 410, 200);
    label.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor blueColor];
    [self.view addSubview:label];
    label.font = [UIFont systemFontOfSize:34];//labei大小和字体
    label.textColor = [UIColor blackColor];
    label.shadowColor = [UIColor greenColor];//字体阴影颜色
    label.shadowOffset = CGSizeMake(100, 0);//阴影偏离位置
    
    label.textAlignment = NSTextAlignmentCenter;//设置居中对齐
    label.numberOfLines = 3;//文字尽量按照设计的数来显示
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createUI];
}


@end
