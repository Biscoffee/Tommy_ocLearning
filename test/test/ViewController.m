//
//  ViewController.m
//  test
//
//  Created by 吴桐 on 2025/5/31.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize textField = _textField;
- (void)viewDidLoad {
    [super viewDidLoad];
    self.textField = [[UITextField alloc] init];
    //创建一个文本输入区对象
    self.textField.frame = CGRectMake(100, 100, 100, 40);
    //设定位置
    self.textField.text = @"用户名";
    self.textField.font = [UIFont systemFontOfSize:15];//设置字体大小
    self.textField.textColor = [UIColor blackColor];
    self.textField.borderStyle = UITextBorderStyleRoundedRect;//设置圆角风格
    //self.textField.borderStyle = UITextBorderStyleLine; // 线框风格
    self.textField.keyboardType = UIKeyboardTypeNumberPad;
    //设置虚拟键盘风格
    //UIKeyboardTypeDefault默认风格
    //UIKeyboardTyprNamePhonePad字母和数字的组合风格
    //UIKeyboradTypeNumberPad：纯数字风格
    self.textField.placeholder = @"请输入用户名";
    //提示文字
    self.textField.secureTextEntry = NO;
    //是否为密码输入
    //YES:作为密码处理，原点加密
    //NO：正常显示
    [self.view addSubview:self.textField];
    self.textField.delegate = self;
    // Do any additional setup after loading the view.
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.textField resignFirstResponder];//让虚拟键盘回收，不再作为第一消息响应者
}
-(void)textFieldDidBeginEditing:(UITextField *)textField {
    NSLog(@"开始编辑了");
}
-(void) textFieldDidEndEditing:(UITextField *)textField {
    self.textField.text = @"";
    NSLog(@"开始结束编辑了");
}
//是否可以进行输入
-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    return YES;
}
//是否可以结束输入
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    if (self.textField.text.length < 8) {
        return NO;
    } else {
        return YES;
    }
    
}
@end

