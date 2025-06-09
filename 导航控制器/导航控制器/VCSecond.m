//
//  VCSecond.m
//  导航控制器
//
//  Created by 吴桐 on 2025/6/2.
//

#import "VCSecond.h"
#import "VCThird.h"
 
@interface VCSecond ()
 
@end
 
@implementation VCSecond
 
- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置视图二的标题和颜色
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"欧美";
    
    //为视图控制器导航栏设置右侧按钮
    UIBarButtonItem *btnNext = [[UIBarButtonItem alloc] initWithTitle: @"下一级" style: UIBarButtonItemStylePlain target: self action: @selector(pressNext)];
    
    self.navigationItem.rightBarButtonItem = btnNext;
    
    //为视图控制器导航栏设置返回的左侧按钮
    UIBarButtonItem *btnLeft = [[UIBarButtonItem alloc] initWithTitle: @"返回上一级" style: UIBarButtonItemStylePlain target: self action: @selector(pressBack)];
    
    self.navigationItem.leftBarButtonItem = btnLeft;
}
 
- (void)pressNext {
    //创建新的视图控制器
    VCThird *vcThird = [[VCThird alloc] init];
    
    //推入第三个视图控制器对象
    [self.navigationController pushViewController: vcThird animated: YES];
    
}
 
- (void)pressBack {
    //将当前视图控制器弹出，返回到上一级界面
    [self.navigationController popViewControllerAnimated: YES];
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

