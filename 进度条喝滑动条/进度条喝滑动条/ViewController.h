//
//  ViewController.h
//  进度条喝滑动条
//
//  Created by 吴桐 on 2025/5/28.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    UIProgressView* _progressView;
    UISlider* _slider;
}
@property(nonatomic) UIProgressView* _progressView;
@property(nonatomic) UISlider* _slider;

@end

