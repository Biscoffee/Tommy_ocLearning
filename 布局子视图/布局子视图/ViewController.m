//
//  ViewController.m
//  布局子视图
//
//  Created by 吴桐 on 2025/6/1.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _superView = [[UIView alloc] initWithFrame:CGRectMake(20, 29, 180, 280)];
    _superView.backgroundColor = [UIColor greenColor];
    _label1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    _label1.text = @"1";
    _label1.backgroundColor = [UIColor orangeColor];
    
    _label2 = [[UILabel alloc] initWithFrame:CGRectMake(180 - 40, 0, 40, 40)];
    _label2.text = @"2";
    _label2.backgroundColor = [UIColor orangeColor];
    
    _label3 = [[UILabel alloc] initWithFrame:CGRectMake(180 - 40, 280 - 40, 40, 40)];
    _label3.text = @"3";
    _label3.backgroundColor = [UIColor orangeColor];
    
    _label4 = [[UILabel alloc] initWithFrame:CGRectMake(0, 280 - 40, 40, 40)];
    _label4.text = @"4";
    _label4.backgroundColor = [UIColor orangeColor];
    // Do any additional setup after loading the view.
    [_superView addSubview:_label1];
    [_superView addSubview:_label2];
    [_superView addSubview:_label3];
    [_superView addSubview:_label4];
    [self.view addSubview: _superView];
    _viewCenter = [[UIView alloc] initWithFrame:CGRectMake(0, 0, _superView.bounds.size.width, 40)];
    _viewCenter.center = CGPointMake(180 / 2, 280 / 2);
    _viewCenter.backgroundColor = [UIColor orangeColor];
    [_superView addSubview: _viewCenter];
    
    //设置自动布局的属性
    _viewCenter.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;//自动调整到Width，自动调整对于顶部的距离，自动调整对于底部的距离
    _label2.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin;
    _label3.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleLeftMargin;
    _label4.autoresizingMask = UIViewAutoresizingFlexibleTopMargin;
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    static BOOL isLarge = NO;//设置一个变量来控制这一次是变大还是变小
    [UIView animateWithDuration: 1.0 animations:^ {
        if (isLarge == NO) {
            self->_superView.frame = CGRectMake(10, 10, 350, 580);
            isLarge = YES;
        } else {
            self->_superView.frame = CGRectMake(20, 20, 180, 280);
            isLarge = NO;
        }
    }];
}

@end


