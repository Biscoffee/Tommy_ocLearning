//
//  ViewController.m
//  登陆界面
//
//  Created by 吴桐 on 2025/5/28.
//

#import "ViewController.h"
#import <objc/runtime.h>
#import "ViewC02.h"
 
@interface ViewController ()

@property (nonatomic, strong) NSString *registeredName;
@property (nonatomic, strong) NSString *registeredKey;
 
@end
 
@implementation ViewController
 
- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView* bgImageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    bgImageView.image = [UIImage imageNamed:@"kebi.webp"];
        bgImageView.contentMode = UIViewContentModeScaleAspectFill; // 根据需求设置缩放模式
        [self.view addSubview:bgImageView];
        [self.view sendSubviewToBack:bgImageView]; // 放到最底层

    
    _bUesrName = [[UILabel alloc] initWithFrame: CGRectMake(50, 100, 300, 70)];
    _bUesrName.text = @"用户名：";
    [self.view addSubview: _bUesrName];
    
    _userName = [[UITextField alloc] initWithFrame: CGRectMake(50, 150, 300, 50)];
    _userName.borderStyle = UITextBorderStyleLine;
    _userName.placeholder = @"请输入用户名......";
    [self.view addSubview: _userName];
    
    _bUserKey = [[UILabel alloc] initWithFrame: CGRectMake(50, 200, 300, 70)];
    _bUserKey.text = @"密码:";
    [self.view addSubview: _bUserKey];
    
    _userKey = [[UITextField alloc] initWithFrame: CGRectMake(50, 250, 300, 50)];
    _userKey.borderStyle = UITextBorderStyleLine;
    _userKey.keyboardType = UIKeyboardTypePhonePad;
    _userKey.placeholder = @"请输入密码......";
    [self.view addSubview: _userKey];
    
    _login = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    _login.frame = CGRectMake(150, 500, 100, 60);
   // _login.backgroundColor = [UIColor Color];
    [_login setTitle: @"登录" forState: UIControlStateNormal];
    [_login setTitleColor: [UIColor blackColor] forState: UIControlStateNormal];
    [_login setTitleColor: [UIColor brownColor] forState: UIControlStateHighlighted];
    [_login addTarget: self action: @selector(pressLogin) forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview: _login];
    
   
    _register = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    _register.frame = CGRectMake(150, 600, 100, 60);
   // _register.backgroundColor = [UIColor grayColor];
    [_register setTitle: @"注册" forState: UIControlStateNormal];
    [_register setTitleColor: [UIColor blackColor] forState: UIControlStateNormal];
    [_register setTitleColor: [UIColor brownColor] forState: UIControlStateHighlighted];
    [_register addTarget: self action: @selector(pressRegister) forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview: _register];
    
    UIButton *imageButton = [UIButton buttonWithType:UIButtonTypeSystem];
    imageButton.frame = CGRectMake(150, 700, 120, 50);
    imageButton.backgroundColor = [UIColor grayColor];
    [imageButton setTitle:@"一键坠机" forState:UIControlStateNormal];
    [imageButton setTitleColor: [UIColor blackColor] forState: UIControlStateNormal];
    [imageButton addTarget:self action:@selector(showFullImage) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:imageButton];
}
 
- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.userName resignFirstResponder];
    [self.userKey resignFirstResponder];
}
 
- (void)showFullImage {
    UIImageView *fullImageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    fullImageView.image = [UIImage imageNamed:@"kobe2.jpeg"];
    fullImageView.contentMode = UIViewContentModeScaleAspectFit;
    fullImageView.backgroundColor = [UIColor blackColor];
    fullImageView.userInteractionEnabled = YES;

    // 添加点击手势用于关闭
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideFullImage:)];
    [fullImageView addGestureRecognizer:tap];

    fullImageView.tag = 999; // 给它一个唯一 tag 用于移除
    [self.view addSubview:fullImageView];
}

- (void)hideFullImage:(UITapGestureRecognizer *)tap {
    UIView *imageView = [self.view viewWithTag:999];
    [imageView removeFromSuperview];
}

- (void) pressLogin {
    NSString *strName = @"科比";
    NSString *strKey = @"24";
    
    NSString *strTextName = _userName.text;
    NSString *strTextKey = _userKey.text;
    
    BOOL matchDefault = [strTextName isEqualToString:@"科比"] && [strTextKey isEqualToString:@"24"];
    BOOL matchRegistered = self.registeredName && self.registeredKey && [strTextName isEqualToString:self.registeredName] && [strTextKey isEqualToString:self.registeredKey];

    if (matchDefault || matchRegistered) {
        NSLog(@"用户名密码正确");
        //显示弹窗
        //在旧版本里弹窗是用UIAlertView，但是在现在的版本是用UIAlertController的
        //创建好弹窗对象之后，使用alertControllerWithTitle方法为其赋值，传入三个参数
        //第一个参数是指弹窗的标题，第二个参数指弹窗显示的信息，第三个参数指弹窗样式
        UIAlertController *alert = [UIAlertController alertControllerWithTitle: @"提示" message: @"验证成功，登陆成功" preferredStyle: UIAlertControllerStyleAlert];
        //接下来为弹窗添加按钮，首先用UIAlertAction创建弹窗按钮对象，然后调用actionWithTitle方法赋值，传入两个参数
        //第一个参数是指按钮的文本内容，第二个参数是传入一个代码块作为一个执行的操作，如果不需要操作直接传入nil即可
        //如果需要多个按钮，直接按这个格式创建多个按钮对象即可
        UIAlertAction *conform = [UIAlertAction actionWithTitle:@"确认" style:UIAlertActionStyleDefault handler:^(UIAlertAction *_Nonnull action) {
            NSLog(@"点击了确认按钮");
            ViewC02 *vc = [[ViewC02 alloc] init];
            vc.modalPresentationStyle = UIModalPresentationFullScreen;
            [self presentViewController:vc animated:YES completion:nil];
        }];
        //创建完弹窗后，调用presentViewController使弹窗显示出来，传入三个参数
        //第一个参数指创建好的弹窗对象，第二个参数指是否需要动画效果，第三个参数传入一个代码块，不需要代码块也可以传nil
        [self presentViewController: alert animated: YES completion: nil];
        //最后将按钮添加到弹窗中
        [alert addAction: conform];
        
        UIWindow *popupWindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
        popupWindow.windowLevel = UIWindowLevelAlert + 1;

        UIViewController *imageVC = [[UIViewController alloc] init];
        popupWindow.rootViewController = imageVC;

        UIImageView *imgView = [[UIImageView alloc] initWithFrame:popupWindow.bounds];
        imgView.image = [UIImage imageNamed:@"kobe4.jpg"];
        imgView.contentMode = UIViewContentModeScaleAspectFit;
        imgView.backgroundColor = [UIColor blackColor];
        imgView.userInteractionEnabled = YES;

        UITapGestureRecognizer *dismissTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hidePopupWindow:)];
        [imgView addGestureRecognizer:dismissTap];

        [imageVC.view addSubview:imgView];
        [popupWindow makeKeyAndVisible];

        objc_setAssociatedObject(self, "popupWindowKey", popupWindow, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    } else {
        NSLog(@"用户名密码错误");
        UIAlertController *alert2 = [UIAlertController alertControllerWithTitle: @"提示" message: @"验证失败，登陆失败" preferredStyle: UIAlertControllerStyleAlert];
        UIAlertAction *conform2 = [UIAlertAction actionWithTitle: @"确认" style: UIAlertActionStyleDefault handler: ^(UIAlertAction *_Nonnull action) {
            NSLog(@"点击了确认按钮");
        }];
        [self presentViewController: alert2 animated: YES completion: nil];
        [alert2 addAction: conform2];
    }
}

- (void)pressRegister {
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"其实这并没什么卵用" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *conform = [UIAlertAction actionWithTitle: @"确认" style: UIAlertActionStyleDefault handler: ^(UIAlertAction *_Nonnull action) {
        NSLog(@"点击了确认按钮");
    }];
    //创建完弹窗后，调用presentViewController使弹窗显示出来，传入三个参数
    //第一个参数指创建好的弹窗对象，第二个参数指是否需要动画效果，第三个参数传入一个代码块，不需要代码块也可以传nil
    [self presentViewController: alert animated: YES completion: nil];
    //最后将按钮添加到弹窗中
    [alert addAction: conform];
}

- (void)hidePopupWindow:(UITapGestureRecognizer *)tap {
    UIWindow *popupWindow = objc_getAssociatedObject(self, "popupWindowKey");
    [popupWindow resignKeyWindow];
    popupWindow.hidden = YES;
    objc_setAssociatedObject(self, "popupWindowKey", nil, OBJC_ASSOCIATION_ASSIGN);
}
 
@end
