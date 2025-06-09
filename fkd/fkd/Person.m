//
//  Person.m
//  fkd
//
//  Created by 吴桐 on 2025/5/18.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@implementation Person
 
// 实现 copy（返回不可变副本）
- (id)copyWithZone:(NSZone *)zone {
    Person *copy = [[[self class] allocWithZone:zone] init];
    copy.name = [self.name copy];
    copy.age = self.age;
    return copy;
}
 
- (id)mutableCopyWithZone:(NSZone *)zone {
    Person *copy = [[[self class] allocWithZone:zone] init];
    copy.name = [self.name mutableCopy];
    copy.age = self.age;
    return copy;
}
 
@end
