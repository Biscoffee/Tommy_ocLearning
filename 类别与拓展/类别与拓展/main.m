//
//  main.m
//  类别与拓展
//
//  Created by 吴桐 on 2025/5/19.
//

#import <Foundation/Foundation.h>
#import "NSObject+hu.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSNumber* num = [NSNumber numberWithInt:3];
        NSNumber* add = [num add: 2];
        NSLog(@"%@", add);
        
    }
    return 0;
}
