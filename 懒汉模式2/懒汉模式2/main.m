//
//  main.m
//  懒汉模式2
//
//  Created by 吴桐 on 2025/5/19.
//

#import <Foundation/Foundation.h>
#import "Singleton.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Singleton* p1 = [[Singleton alloc] init];
        Singleton* p2 = [Singleton sharedInstance];
        Singleton* p3 = [Singleton sharedInstance];
        Singleton* p4 = [p1 copy];
        Singleton* p5 = [p1 mutableCopy];
        NSLog(@"%p", p1);
        NSLog(@"%p", p2);
        NSLog(@"%p", p3);
        NSLog(@"%p", p4);
        NSLog(@"%p", p5);
    }
    return 0;
}
