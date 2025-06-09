//
//  main.m
//  单例模式
//
//  Created by 吴桐 on 2025/5/20.
//

#import<Foundation/Foundation.h>
#import "Singleton.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Singleton* p1 = [[Singleton alloc] init];
        Singleton* p2 = [Singleton sharedInstance];
        Singleton* p3 = [p1 copy];
        NSLog(@"%p %p %p",p1,p2,p3);
    }
    return 0;
}
