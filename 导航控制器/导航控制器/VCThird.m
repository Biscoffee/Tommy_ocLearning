//
//  VCThird.m
//  导航控制器
//
//  Created by 吴桐 on 2025/6/2.
//

#import "VCThird.h"
 
@interface VCThird ()
 
@end
 
@implementation VCThird
 
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithRed: 0.7 green: 0.2 blue: 0.5 alpha: 1];
    self.title = @"亚非";
    
    UIBarButtonItem *btnLeft = [[UIBarButtonItem alloc] initWithTitle: @"返回上一级" style: UIBarButtonItemStylePlain target: self action: @selector(pressBack)];
    
    self.navigationItem.leftBarButtonItem = btnLeft;
    
    UIBarButtonItem *btnRight = [[UIBarButtonItem alloc] initWithTitle: @"返回根视图" style: UIBarButtonItemStylePlain target: self action: @selector(pressRoot)];
    
    self.navigationItem.rightBarButtonItem = btnRight;
}
 
- (void)pressBack {
    //将当前视图控制器弹出,返回到上一级界面
    [self.navigationController popViewControllerAnimated: YES];
}
 
- (void)pressRoot {
    //将当前视图弹出，并返回根视图
    [self.navigationController popToRootViewControllerAnimated: YES];
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
