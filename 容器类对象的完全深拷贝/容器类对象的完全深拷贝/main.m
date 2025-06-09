//
//  main.m
//  容器类对象的完全深拷贝
//
//  Created by 吴桐 on 2025/5/19.
//

#import <Foundation/Foundation.h>
#import "FKUser.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableString* str1; // 声明但未使用的变量
        FKUser* p1 = [[FKUser alloc] initWithName:@"张三" pass:@"11"];
        FKUser* p2 = [p1 copy];
        NSArray* ary = [NSArray arrayWithObjects:p1, p2, nil];
        // NSArray 的 initWithArray:copyItems: 方法在实际中不存在
        // 是一个自定义方法，用于深拷贝数组中的元素
        NSArray* ary1 = [[NSArray alloc] initWithArray:ary copyItems:YES];
        NSLog(@"%p, %p", ary, ary1);
        NSLog(@"%p, %p", ary1[0], ary[0]);
        FKUser* p3 = ary1[0];
        FKUser* p4 = ary[0];
        NSLog(@"%p, %p", p3.name, p4.name);
    }
    return 0;
}
