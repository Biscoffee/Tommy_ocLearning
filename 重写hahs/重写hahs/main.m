//
//  main.m
//  重写hahs
//
//  Created by 吴桐 on 2025/5/19.
//

#import <Foundation/Foundation.h>
#import "FKUser.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKUser* p1 = [[FKUser alloc] initWithId:@"99" andName: @"罗哥"];
        FKUser* p2 = [[FKUser alloc] initWithId:@"93" andName:@"罗哥"];
        NSLog(@"%d", [p1 isEqual:p2]);
    }
    return 0;
}
