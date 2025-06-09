//
//  VCThird.m
//  VCRoot
//
//  Created by 吴桐 on 2025/5/30.
//

#import "VCThird.h"
 
@interface VCThird ()
 
@end
 
@implementation VCThird
 
- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView* View3 = [[UIImageView alloc] initWithFrame:self.view.bounds];
    View3.image = [UIImage imageNamed:@"image6.jpg"];
    View3.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:View3];
    [self.view sendSubviewToBack:View3];

    self.title = @"生机之塔";
    
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

