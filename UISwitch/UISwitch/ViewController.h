//
//  ViewController.h
//  UISwitch
//
//  Created by 吴桐 on 2025/5/28.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    UISwitch* myswitch;
    NSTimer* myTimer;
}

@property (retain, nonatomic) UISwitch* myswitch;
@property (retain, nonatomic) NSTimer* myTimer;

@end

