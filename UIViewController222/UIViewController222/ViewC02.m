//
//  ViewC02.m
//  UIViewController222
//
//  Created by 吴桐 on 2025/5/25.
//

#import "ViewC02.h"

@interface ViewC02 ()

@end

@implementation ViewC02

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    NSLog(@"%@ load", [self class]);
}
- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    //使当前的控制器消失掉，传入两个参数
    //第一个参数指是否有动画效果
    //第二个参数指结束后是否调用block块操作，不需要为nil
    [self dismissViewControllerAnimated: YES completion: nil];
}

- (void) viewWillDisappear:(BOOL)animated {
    NSLog(@"%@ 视图即将消失", [self class]);
}

- (void) viewDidDisappear:(BOOL)animated {
    NSLog(@"%@ 视图已消失", [self class]);
}

- (void) viewDidAppear:(BOOL)animated {
    NSLog(@"%@ 视图已显示", [self class]);
}

- (void) viewWillAppear:(BOOL)animated {
    NSLog(@"%@ 视图即将显示", [self class]);
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
