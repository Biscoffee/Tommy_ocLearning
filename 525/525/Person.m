//
//  Person.m
//  525
//
//  Created by 吴桐 on 2025/5/25.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age {
    self = [super init];
    if (self) {
        self.name = name;
        self.age = age;
    }
    return self;
}

@end
