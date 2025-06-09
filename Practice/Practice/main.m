//
//  main.m
//  Practice
//
//  Created by 吴桐 on 2025/5/18.
//

#import <Foundation/Foundation.h>
#import "FKPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKPerson* p = [[FKPerson alloc] initWithName:@"朝阳公园" age:91];
//        p.age = 99;
//        p.name = @"ufeuvfe";
        NSLog(@"%@", p.name);
        NSLog(@"%ld",p.age);
    }
    return 0;
}
