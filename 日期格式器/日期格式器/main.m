//
//  main.m
//  日期格式器
//
//  Created by 吴桐 on 2025/5/18.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    //需要被格式化的时候
    //获取从1970一月一入开始二十年后的日期
        NSDate *dt = [NSDate dateWithTimeIntervalSince1970:3600 * 24 * 366 * 50];
    //创建两个NSLocale，分别代表中国和美国
        NSLocale *locales[] = {[[NSLocale alloc] initWithLocaleIdentifier:@"zh_CN"], [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"]};
        NSDateFormatter *df[8];
        //为上面两个NSLocale创建8个DataFormat对象
        for (int i = 0; i < 2; i++) {
            df[i * 4] = [[NSDateFormatter alloc] init];
            //设置NSDataFormatter的日期、时间风格。
            [df[i * 4] setDateStyle:NSDateFormatterShortStyle];
            [df[i * 4] setTimeStyle:NSDateFormatterShortStyle];
            //设置NSDataFormatter的NSLocale 地区
            [df[i * 4] setLocale: locales[i]];
            df[i * 4 + 1] = [[NSDateFormatter alloc] init];
            [df[i * 4 + 1] setDateStyle:NSDateFormatterMediumStyle];
            [df[i * 4 + 1] setTimeStyle:NSDateFormatterMediumStyle];
            [df[i * 4 + 1] setLocale: locales[i]];
            df[i * 4 + 2] = [[NSDateFormatter alloc] init];
            [df[i * 4 + 2] setDateStyle:NSDateFormatterLongStyle];
            [df[i * 4 + 2] setTimeStyle:NSDateFormatterLongStyle];
            [df[i * 4 + 2] setLocale: locales[i]];
            df[i * 4 + 3] = [[NSDateFormatter alloc] init];
            [df[i * 4 + 3] setDateStyle:NSDateFormatterFullStyle];
            [df[i * 4 + 3] setTimeStyle:NSDateFormatterFullStyle];
            [df[i * 4 + 3] setLocale: locales[i]];
        }
        for (int i = 0 ;i < 2; i++) {
            switch (i) {
                case 0:
                    NSLog(@"华为日期格式");
                    break;
                case 1:
                    NSLog(@"洛杉矶日期格式");
                    break;
            }
            NSLog(@"short：%@", [df[i * 4] stringFromDate:dt]);
            NSLog(@"mid: %@", [df[i * 4 + 1] stringFromDate:dt]);
            NSLog(@"long：%@", [df[i * 4 + 2] stringFromDate:dt]);
            NSLog(@"full：%@", [df[i * 4 + 3] stringFromDate:dt]);
        }
        NSDateFormatter *df2 = [[NSDateFormatter alloc] init];
        //设置自定义的格式器模版
        [df2 setDateFormat:@"公园yyyy年MM月DD日HH时mm分"];
        //执行格式化
        NSLog(@"%@", [df2 stringFromDate:dt]);
        NSString *datestr = @"2023-11-17";
        NSDateFormatter *df3  = [[NSDateFormatter alloc] init];
        //根据日期字符串的格式设置格式模版
        [df3 setDateFormat:@"yyyy-MM-dd"];
        //将字符串转换为NSData对象
        NSDate *date2 = [df3 dateFromString:datestr];
        NSLog(@"%@", date2);
    }
    return 0;
}
