//
//  ViewC02.m
//  登陆界面
//
//  Created by 吴桐 on 2025/5/28.
//

#import "ViewC02.h"

@interface ViewC02 ()

@end

@implementation ViewC02

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImageView* bggImageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    bggImageView.image = [UIImage imageNamed:@"kobe4.jpg"];
    bggImageView.contentMode = UIViewContentModeScaleAspectFill; // 根据需求设置缩放模式
    [self.view addSubview:bggImageView];
}
-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismissViewControllerAnimated:YES completion:nil];
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
