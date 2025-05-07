//
//  main.m
//  包装类的用法
//
//  Created by 吴桐 on 2025/5/7.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSNumber *num = [NSNumber numberWithInt:66];
        NSNumber *de = [NSNumber numberWithDouble:7.7];
        NSLog(@"%d",[num intValue]);
        NSLog(@"%g",[de doubleValue]);
        NSNumber *ch = [[NSNumber alloc] initWithChar:'t'];
        NSLog(@"%@",ch);
    }
    return 0;
}
