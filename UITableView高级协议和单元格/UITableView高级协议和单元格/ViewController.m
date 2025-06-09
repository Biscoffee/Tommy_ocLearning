//
//  ViewController.m
//  UITableView高级协议和单元格
//
//  Created by 吴桐 on 2025/6/3.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        //自动调整子视图的大小
        _tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        //设置代理
        _tableView.delegate = self;
        _tableView.dataSource = self;
        //头部视图和尾部视图可以用来展示与整个列表相关的信息，例如搜索框、筛选器、广告等。它们的高度可以根据内容自动调整，也可以手动设置高度。可以通过UITableView的dataSource方法tableView(_:viewForHeaderInSection:)和tableView(_:viewForFooterInSection:)来设置头部视图和尾部视图，或者通过UITableView的属性tableHeaderView和tableFooterView来设置静态的头部视图和尾部视图。
        //数据视图的头部视图的设定
        _tableView.tableHeaderView = nil;
        //数据视图的尾部视图的设定
        _tableView.tableFooterView = nil;
        
        [self.view addSubview:_tableView];
        //初始化数据源数组
        _arrayData = [[NSMutableArray alloc] init];
        for (int i = 0; i < 20; i++) {
            NSString* str = [NSString stringWithFormat:@"A %d", i];
            [_arrayData addObject:str];
        }
        //当数据视图的数据源发生变化时，来更新数据视图，重新加载数据
        [_tableView reloadData];
        [self createBtn];
    }
    - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
        return 1;
    }
    - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
        return _arrayData.count;
    }
    - (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
        NSString* str = @"cell";
        //尝试获取可以复用的单元格
        //如果得不到则返回nil
        //复用单元格的条件是单元格的数量足够多使得能够充满屏幕
        UITableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier:str];
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:str];
        }
        //单元格文字赋值
        cell.textLabel.text = [_arrayData objectAtIndex:indexPath.row];
        //单元格添加子标题
        cell.detailTextLabel.text = @"子标题";
        NSString* istr = @"kebi.webp";
        UIImage* image = [UIImage imageNamed:istr];
        //设置默认的图标信息
        cell.imageView.image = image;
        return  cell;
    }
    //设置单元格高度
    - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
        return 60;
    }
    //创建按钮
    - (void)createBtn {
        _isEdit = NO;
        _btnEdit = [[UIBarButtonItem alloc] initWithTitle:@"编辑" style:UIBarButtonItemStyleDone target:self action:@selector(pressEdit)];
        _btnFinish = [[UIBarButtonItem alloc] initWithTitle:@"完成" style:UIBarButtonItemStyleDone target:self action:@selector(pressFinish)];
        _btnDelete = [[UIBarButtonItem alloc] initWithTitle:@"删除" style:UIBarButtonItemStyleDone target:self action:@selector(pressDelete)];
        self.navigationItem.rightBarButtonItem = _btnEdit;
    }
    //当手指在单元格上移动时可以显示编辑状态
    - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
        //删除数据源对应的数据
        [_arrayData removeObjectAtIndex:indexPath.row];
        //数据源更新
        [_tableView reloadData];
        NSLog(@"Delete!");
    }
    //选中单元格调用此协议函数
    - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
        NSLog(@"选中单元格！%ld %ld", (long)indexPath.section, (long)indexPath.row);
    }
    - (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
        NSLog(@"取消选中单元格！%ld %ld", (long)indexPath.section, (long)indexPath.row);
    }
    //单元格显示效果协议
    - (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath {
        //UITableViewCellEditingStyleDelete：删除，默认情况下为此状态
        //UITableViewCellEditingStyleInsert：插入
        //UITableViewCellEditingStyleNone：虚空
        //UITableViewCellEditingStyleDelete ｜UITableViewCellEditingStyleInsert：多选状态
        return UITableViewCellEditingStyleDelete;
    }
    - (void)pressEdit {
        _isEdit = YES;
        self.navigationItem.rightBarButtonItem = _btnFinish;
        [_tableView setEditing:YES];
        self.navigationItem.leftBarButtonItem = _btnDelete;
    }
    - (void)pressFinish {
        _isEdit = NO;
        self.navigationItem.rightBarButtonItem = _btnEdit;
        [_tableView setEditing:NO];
        self.navigationItem.leftBarButtonItem = nil;
    }
    - (void)pressDelete {
        
    }
@end
