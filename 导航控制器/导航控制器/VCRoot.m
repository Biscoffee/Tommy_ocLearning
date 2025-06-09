//
//  VCRoot.m
//  导航控制器
//
//  Created by 吴桐 on 2025/6/2.
//

#import "VCRoot.h"
#import "VCSecond.h"
@interface VCRoot ()
 
@end
 
@implementation VCRoot
 
- (void)viewDidLoad {
    [super viewDidLoad];
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    
    self.navigationItem.title = @"Pornhub";

    UINavigationBarAppearance *appearance = [[UINavigationBarAppearance alloc] init];
    [appearance configureWithOpaqueBackground];
    appearance.backgroundColor = [UIColor orangeColor];
appearance.titleTextAttributes = @{ NSForegroundColorAttributeName : [UIColor whiteColor] };
    self.navigationController.navigationBar.standardAppearance = appearance;
    self.navigationController.navigationBar.scrollEdgeAppearance = appearance;
   
    //创建一个导航栏左侧的按钮，这是根据title文字来创建的，传入四个参数
    //第一个参数是按钮上的文字内容；第二个参数是按钮风格
    //第三个参数是事件的拥有者；第四个参数是按钮的事件函数
    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithTitle: @"<" style: UIBarButtonItemStyleDone target: self action: @selector(pressLeft)];
    
    //给导航栏的左侧按钮属性赋值为我们创建好的左侧按钮
    self.navigationItem.leftBarButtonItem = leftBtn;
    
    //右侧按钮
    //和左侧按钮不同的是，这里创建右侧按钮的时候我们使用的初始化方法是不一样的
    //这里的初始化方法不需要输入文字内容，而是指定了系统提供的风格样式，系统风格的按钮内容或标题文字不可更改
//    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem: UIBarButtonSystemItemAdd target: self action: @selector(pressRight)];
//    self.navigationItem.rightBarButtonItem = rightBtn;
    
    UIBarButtonItem *next = [[UIBarButtonItem alloc] initWithTitle: @">>" style: UIBarButtonItemStylePlain target: self action: @selector(pressNext)];
       
       self.navigationItem.rightBarButtonItem = next;
    
    //创建多按钮：
    //先创建一个标签对象
    UILabel *label = [[UILabel alloc] initWithFrame: CGRectMake(10, 10, 50, 40)];
    label.text = @"❤️‍🔥🔞";
    
    //将label设置为居中
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor orangeColor];
    
    //将UIlabel类型的控件添加到导航栏按钮
    //initWithCustomView就代表以自定义控件来初始化
    UIBarButtonItem *item3 = [[UIBarButtonItem alloc] initWithCustomView: label];
    
    //创建一个按钮数组
   // NSArray *arrayBtn = [NSArray arrayWithObjects: rightBtn, item3, nil];
    
    //将右侧按钮数组赋值
//    self.navigationItem.description = label;
    
}
 
- (void) pressLeft {
    NSLog(@"左侧按钮被按下");
}
 

- (void)pressNext {
    //创建新的视图控制器
    VCSecond *vcSecond = [[VCSecond alloc] init];
    
    //使用当前视图控制器的导航控制器对象
    [self.navigationController pushViewController: vcSecond animated: YES];
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
