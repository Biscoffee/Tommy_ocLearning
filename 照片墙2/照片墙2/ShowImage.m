//
//  ShowImage.m
//  照片墙2
//
//  Created by 吴桐 on 2025/6/4.
//

#import "ShowImage.h"

@interface ShowImage ()

@end

@implementation ShowImage

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"show photo";
    self.view.backgroundColor = [UIColor whiteColor];
    _imageView = [[UIImageView alloc] init];
    _imageView.frame = CGRectMake(40, 200, 320, 480);
    _imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"image%ld.jpg",_imageTag - 100]];
    [self.view addSubview: _imageView];
    
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
