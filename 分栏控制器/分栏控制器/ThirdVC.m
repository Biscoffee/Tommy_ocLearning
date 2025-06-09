//
//  ThirdVC.m
//  分栏控制器
//
//  Created by 吴桐 on 2025/6/2.
//

#import "ThirdVC.h"
 
@interface ThirdVC ()
 
@end
 
@implementation ThirdVC
 
- (void)viewDidLoad {
    [super viewDidLoad];
    UITabBarItem *tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFavorites
 tag: 103];
    
    //为分栏按钮设置提示的标记值信息，是系统的，无法变更
    tabBarItem.badgeValue = @"99";
    
    self.tabBarItem = tabBarItem;
    // Do any additional setup after loading the view.
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
