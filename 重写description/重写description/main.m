//
//  main.m
//  重写description
//
//  Created by 吴桐 on 2025/5/19.
//

#import <Foundation/Foundation.h>
#import "HUspy.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        HUspy* p = [[HUspy alloc] init];
        p.name = @"hi";
        p.age = 99;
        NSLog(@"%@ ",p);
    }
    return 0;
}
