//
//  VCRoot.m
//  VCRoot
//
//  Created by 吴桐 on 2025/5/30.
//

#import "VCRoot.h"
#import "VCSecond.h"
 
@interface VCRoot ()
 
@end
 
@implementation VCRoot
 
- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView* View1 = [[UIImageView alloc] initWithFrame:self.view.bounds];
    View1.image = [UIImage imageNamed:@"kebi.webp"];
    View1.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:View1];
    [self.view sendSubviewToBack:View1];
    
    //设置导航栏的透明度
    //默认透明度为YES：可透明的;NO:不透明的
    self.navigationController.navigationBar.translucent = YES;
    //设置导航栏风格颜色，默认为UIBarStyleDefault
    self.navigationController.navigationBar.barStyle = UIBarStyleDefault;
    
    self.title = @"根视图";
    
    //为根视图的导航控制器设置右侧按钮
    UIBarButtonItem *next = [[UIBarButtonItem alloc] initWithTitle: @"下一级" style: UIBarButtonItemStylePlain target: self action: @selector(pressNext)];
    
    self.navigationItem.rightBarButtonItem = next;
}
 
//右侧按钮执行的事件函数
- (void)pressNext {
    //创建新的视图控制器
    VCSecond *vcSecond = [[VCSecond alloc] init];
    
    //使用当前视图控制器的导航控制器对象
    [self.navigationController pushViewController: vcSecond animated: YES];
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
 
