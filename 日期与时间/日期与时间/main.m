//
//  main.m
//  日期与时间
//
//  Created by 吴桐 on 2025/5/18.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *data1 = [NSDate date];
        NSDate *data2 = [[NSDate alloc] initWithTimeIntervalSinceNow:3600 * 24];
        //获得后一天的时间
        NSLog(@"%@", data1);
        NSLog(@"%@", data2);
        NSDate *data3 = [[NSDate alloc] initWithTimeIntervalSinceNow:-3 * 3600 * 24];
        //获得三天前的日期
        NSLog(@"%@", data3);
//        NSDate *data4 = [[NSDate alloc] initWithTimeIntervalSince1970:3600 * 24 * 366 * 30];
//        NSLog(@"%@", data4);//获得1970一月一日之后30年的日期
        NSLocale* cn = [NSLocale currentLocale];
        // 获取NSdate
        NSLog(@"%@", [data1 descriptionWithLocale:cn]);
        //将data1赋给cn，获得当前地区的时间
        //获取系统当前的locale
//        NSLocale *cn1 = [NSLocale currentLocale];
//        NSLog(@"%@", cn1);
        //获取NSdata在当前locale下对应的字符串
        NSLog(@"%@", [data1 descriptionWithLocale:cn]);
        //获取两个之间较早的
        NSLog(@"%@", [data1 earlierDate:data2]);
        
        //compare 方法返回NScomparisonResult枚举值
       // 枚举包含
        //NSOrderedAscending,NSOrderedSame, NSOrderedDescending
        // 分别代表了 调用compare 的日期位于被比较日期的之前 相同 之后
        switch ([data1 compare:data2]) {
            case NSOrderedSame:
                NSLog(@"date1 == date3");
            case NSOrderedAscending:
                NSLog(@"data1 在 data3 之前");
            case NSOrderedDescending:
                NSLog(@"data1 在 data3 之后");
        }
        NSLog(@"时间差为%g", [data1 timeIntervalSinceDate:data3]);
        //interval的意思是间隔，上述是data1 与 data3 的时间间隔
        NSLog(@"差为%g", [data2 timeIntervalSinceNow]);
        //与现在的时间间隔
        
        
    }
    return 0;
}

