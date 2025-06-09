//
//  FKUser.m
//  容器类对象的完全深拷贝
//
//  Created by 吴桐 on 2025/5/19.
//

#import "FKUser.h"
@implementation FKUser
- (instancetype)initWithName:(NSString *)name pass:(NSString *)pass {
    if (self = [super init]) {
        _name = [NSMutableString stringWithString:name];
        _pass = [pass copy];
    }
    return self;
}
- (id)copyWithZone:(NSZone *)zone {
    FKUser *copy = [[[self class] allocWithZone:zone] init];
    copy->_name = [self.name mutableCopy];
    copy->_pass = [self.pass copy];
    return copy;
}
- (NSString *)description {
    return [NSString stringWithFormat:@"<FKUser: %p, name=%@, pass=%@>", self, self.name, self.pass];
}
@end
