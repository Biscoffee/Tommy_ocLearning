//
//  main.m
//  520（2）
//
//  Created by 吴桐 on 2025/5/22.
//

#import <Foundation/Foundation.h>
#import "Singleton.h"
#import "XiyouMobilePerson.h"
#import "XiyouMobilePerson+XiyouMobilePersonCategory.h"
#import "Person.h"
#import "Model.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 分类测试
        Person* q = [[Person alloc] initWithName:@"On" andage:190];
        NSLog(@"%@ %ld", q.name, (long)q.age);
        XiyouMobilePerson *testPerson = [[XiyouMobilePerson alloc]init];
        [testPerson setIOS:1];
        [testPerson setWeb:0];
        NSDictionary *info = [testPerson toDictionary];
        NSLog(@"分类返回字典：%@", info);

        
        // 创建 Model 对象
        Model *model = [[Model alloc] init];

        // 初始化数组
        model.xiyouMobileArray = [[NSMutableArray alloc] init];

        // 添加 5 个 XiyouMobilePerson 对象
        for (int i = 0; i < 5; i++) {
            XiyouMobilePerson *p = [[XiyouMobilePerson alloc] init];
            
            // 设置 iOS/web 为 i * 10，android/server 为字符串
            [p setIOS:i * 10];       // 注意：setIOS 会加1或减1
            [p setWeb:i * 5];
            [p setAndroid:[NSString stringWithFormat:@"安卓%d", i]];
            [p setServer:[NSString stringWithFormat:@"服务端%d", i]];
            
            // 添加到数组中
            [model.xiyouMobileArray addObject:p];
        }
        
        // 打印iOS最大的对象
//        XiyouMobilePerson *maxIOS = model.xiyouMobileArray[0];
//        for (XiyouMobilePerson *p in model.xiyouMobileArray) {
//            if ([p getIOS] > [maxIOS getIOS]) {
//                maxIOS = p;
//            }
//        }
//        NSLog(@"iOS值最大对象：%@", [maxIOS toDictionary]);
//        
        NSArray *sortedArray = [model.xiyouMobileArray sortedArrayUsingSelector:@selector(compare:)];

        // 最大值是第一个
        XiyouMobilePerson *maxPerson = [sortedArray firstObject];
        NSLog(@"iOS值最大的对象信息（使用sortedArrayUsingSelector:）：%@", [maxPerson toDictionary]);

        // 删除 range(2,3)
        [model.xiyouMobileArray removeObjectsInRange:NSMakeRange(2, 3)];

        
        // 字典操作
        XiyouMobilePerson *iosPerson = @{@"key":@"iOS", @"Value":@"胖猫"};
        XiyouMobilePerson *AndroidPerson = @{@"key":@"Android", @"Value":@"乌萨奇"};
        XiyouMobilePerson *ServerPerson = @{@"key":@"Server", @"Value":@"奶龙"};

      //  XiyouMobilePerson *iossPerson = [model.xiyouMobileDic objectForKey:@"iOS"];
        NSLog(@"iOS 对应对象的 name 为：%@", [model.xiyouMobileDic objectForKey:@"iOS"]);
        
        // 集合操作
        Person *p1 = [[Person alloc] initWithName:@"ttt" andage:@19];
        Person *p2 = [p1 copy];

        NSSet *personSet = [NSSet setWithObjects:p1, p2, nil];
        NSLog(@"NSSet 内容：%@", personSet);
    }
    return 0;
}
