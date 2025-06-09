//
//  main.m
//  NSSet
//
//  Created by 吴桐 on 2025/5/17.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSSet *set = [NSSet setWithArray:@[@"Beijing", @"Tianjin", @"Shanghai", @"Chengdu"]];
        for (NSString *item in set) {
            NSLog(@"%@", item);
        }
    }
    return 0;
}
