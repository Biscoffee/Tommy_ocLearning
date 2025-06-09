//
//  ViewController.h
//  UITextFieldDelegate
//
//  Created by 吴桐 on 2025/5/27.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate> {
    //定义textfield
    UITextField* _textField;
}
@property (retain, nonatomic) UITextField* textField;

@end

