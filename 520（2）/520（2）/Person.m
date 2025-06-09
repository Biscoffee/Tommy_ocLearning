//
//  Person.m
//  520（2）
//
//  Created by 吴桐 on 2025/5/22.
//

#import "Person.h"

@implementation Person

-(id)initWithName:(NSString *)aName andage:(int)aage {
    if (self = [super init]) {
        self.name = aName;
        self.age = aage;
    }
    return self;
}

-(void) description {
    NSLog(@"Name:%@, age : %ld", self.name, (long)self.age);
}

// Person.m
- (id)copyWithZone:(NSZone *)zone {
    Person *copy = [[[self class] allocWithZone:zone] init];
    copy.name = [self.name copy];
    copy.age = self.age;
    return copy;
}
//- (void)setName:(NSString *)aName {
//    _name = aName;
//}
//
//- (NSString *)getName {
//    return _name;
//}
//
//- (void)setAge:(NSInteger)a {
//    _age = a;
//}
//
//- (NSInteger)getAge {
//    return _age;
//}

@end
