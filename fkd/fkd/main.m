//
//  main.m
//  fkd
//
//  Created by 吴桐 on 2025/5/18.
//
#import "Foundation/Foundation.h"
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p1 = [[Person alloc] init];
        NSMutableString *nameStr = [[NSMutableString alloc] initWithString:@"Tom"];
        p1.name = nameStr;
        p1.age = 18;
        
        Person *p2 = [p1 copy];// 调用 copyWithZone
        
        Person *p3 = [p1 mutableCopy];  // 调用 mutableCopyWithZone
        [p2.name appendString:@"abc"];
        [p3.name appendString:@"abc"];
        
        NSLog(@"原始：%@ %ld", p1.name, p1.age);
        NSLog(@"copy：%@ %ld", p2.name, p2.age);
        NSLog(@"mutableCopy：%@ %ld", p3.name, p3.age);
        NSLog(@"p3.name class = %@", NSStringFromClass([p3.name class]));
        NSLog(@"%p %p %p", p1, p2,p3);
    }
    return 0;
}
