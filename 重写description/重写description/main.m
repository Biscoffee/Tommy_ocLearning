//
//  main.m
//  重写description
//
//  Created by 吴桐 on 2025/5/7.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p1 = [[Person alloc] initWithName:@"xuan" Age:19];
        NSLog(@"%@,%d",p1,p1);
        NSLog(@"%,@%d",p1.name,p1.age);
    }
    return 0;
}
