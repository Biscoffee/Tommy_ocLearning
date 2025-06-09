//
//  main.m
//  copystrong
//
//  Created by 吴桐 on 2025/5/22.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person* p1 = [[Person alloc] init];
        NSMutableString *s1 = [NSMutableString stringWithString:@"ggg"];
        p1.name = s1;
        [s1 appendString:@"111"];
        NSLog(@"%@", p1.name);
    }
    return 0;
}

