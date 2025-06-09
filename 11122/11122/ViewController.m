//
//  ViewController.m
//  11122
//
//  Created by 吴桐 on 2025/6/8.
//

#import "ViewController.h"
#import "myCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
     //创建数据视图
    _tableview = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height) style:UITableViewStylePlain];
     //设置数据视图的代理对象
    _tableview.delegate = self;
     //设置数据视图的数据源对象
    _tableview.dataSource = self;
    //注册子类
    [_tableview registerClass:[myCustomCell class] forCellReuseIdentifier:@"indentifierCell"];
    [self.view addSubview:_tableview];
}
// 设置数据视图的组数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//获取每组元素的行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 15;
}
//创建单元格对象函数
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    myCustomCell* cell = [_tableview dequeueReusableCellWithIdentifier:@"indentifierCell" forIndexPath:indexPath];
    cell.titleLabel.text = @"一级标题";
    cell.subtitleLabel.text = @"二级标题";
    return cell;
}
@end

