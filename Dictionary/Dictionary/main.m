//
//  main.m
//  Dictionary
//
//  Created by 吴桐 on 2025/5/18.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDictionary* dict = @{@"name":@"Tommy", @"age": @"18"};
        NSString *name = dict[@"name"];
        NSLog(@"名字是 %@", name);

        // 也可以用旧方法：
        NSString *age = [dict objectForKey:@"age"];
        for (NSString *key in dict) {
            NSLog(@"%@: %@", key, dict[key]);
        }
    }
    return 0;
}
