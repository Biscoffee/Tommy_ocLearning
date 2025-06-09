//
//  ShowImage.h
//  照片墙2
//
//  Created by 吴桐 on 2025/6/4.
//

#import <UIKit/UIKit.h>

@interface ShowImage : UIViewController

@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UIImage* image;
@property (nonatomic, assign) NSInteger imageTag; // 用于传入图片编号

@end
