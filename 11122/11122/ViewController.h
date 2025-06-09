//
//  ViewController.h
//  11122
//
//  Created by 吴桐 on 2025/6/8.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<
//实现数据视图的普通协议
//数据视图的普通事件处理
UITableViewDelegate,
//实现数据视图的数据代理协议
//处理数据视图的数据代理
UITableViewDataSource
>
{
    //定义一个数据视图对象
    //数据视图用来显示大量相同格式的信息的视图
    UITableView* _tableview;
}

@end
