//
//  ViewController.h
//  UITableView高级协议和单元格
//
//  Created by 吴桐 on 2025/6/3.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
{
    //数据视图
    UITableView* _tableView;
    //数据源
    NSMutableArray* _arrayData;
    //添加导航按钮
    UIBarButtonItem* _btnEdit;
    UIBarButtonItem* _btnFinish;
    UIBarButtonItem* _btnDelete;
    //设置编辑状态
    BOOL _isEdit;
}

@end


