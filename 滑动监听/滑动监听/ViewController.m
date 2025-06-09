//
//  ViewController.m
//  滑动监听
//
//  Created by 吴桐 on 2025/5/27.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _scrolView = [[UIScrollView alloc] init];
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    _scrolView.frame = CGRectMake(0, 0, screenBounds.size.width, screenBounds.size.height*0.75);
    _scrolView.bounces = YES;//回弹效果，即滑到底后会不会继续拉动
    
    //_scrolView.userInteractionEnabled = NO;
    //是否接受触碰事件，yes接受，no不接受
    _scrolView.contentSize = CGSizeMake(screenBounds.size.width, screenBounds.size.height * 5 * 0.75);
    for (int i = 0; i < 5; i++) {
        NSString* str = [NSString stringWithFormat:@"image%d.jpg", i + 1];
        UIImage* image = [UIImage imageNamed:str];
        UIImageView* iView = [[UIImageView alloc] initWithImage:image];
        iView.frame = CGRectMake(0, screenBounds.size.height * i * 0.75, screenBounds.size.width, screenBounds.size.height * 0.75);
        [_scrolView addSubview:iView];
    }
    [self.view addSubview:_scrolView];
    _scrolView.contentOffset = CGPointMake(0, 0);
    _scrolView.pagingEnabled = NO;//是否开启分页效果。这里禁用了分页滑动（一个屏幕一页）。
    _scrolView.delegate = self;//设置 scrollView 的代理对象为当前控制器，用于接收滑动相关事件（实现代理方法）。
    // Do any additional setup after loading the view.
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    [_scrolView scrollRectToVisible:CGRectMake(0, 0, screenBounds.size.width, screenBounds.size.height * 0.75) animated:YES];
}
//当视图移动时，都会调用这个函数
//调用这个协议的滚动视图对象
//使用这个函数来监控滚动视图的位置
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    CGFloat offsetY = scrollView.contentOffset.y;
    NSLog(@"y = %lf", offsetY);
    
    CGFloat hight = scrollView.frame.size.height;
    NSInteger page = (scrollView.contentOffset.y + hight / 2) / hight;
    NSLog(@"当前页数：%ld", (long)page);
}

//结束拖动的时候调用这个函数
- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView {
    NSLog(@"结束拖动的时候调用这个函数");
}
//滚动视图即将开始被拖动的时候
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    NSLog(@"滚动视图即将开始被拖动的时候");
}
//即将结束拖动的时候调用
-(void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset {
    NSLog(@"即将结束拖动的时候调用");
}
//视图即将减速的时候
- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView {
    NSLog(@"视图即将减速的时候");
}
//视图即将结束减速的时候调用，视图停止的瞬间调用
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    NSLog(@"视图即将结束减速的时候调用");
}
@end

