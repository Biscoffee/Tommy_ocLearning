//
//  main.m
//  NSDate
//
//  Created by 吴桐 on 2025/5/9.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //获取代表当前日期，时间的NSDate
        NSDate* date1= [NSDate date];
        NSLog(@"%@", date1);
        //获取从当前时间开始，一天以后的日期
        NSDate* date2 = [[NSDate alloc] initWithTimeIntervalSinceNow:3600*24];
        NSLog(@"%@", date2);
        //获取从当前时间开始，3天以前的日期
        NSDate* date3 = [[NSDate alloc] initWithTimeIntervalSinceNow:-3*3600*24];
        NSLog(@"%@", date3);
        //获取系统当前的Local
        NSlocale* cn = [NSLocale currentLocale];
        
        NSLog(@"%@" , )
    }
    return 0;
}
