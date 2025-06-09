//
//  Person.m
//  520
//
//  Created by 吴桐 on 2025/5/20.
//

#import "Person.h"

@implementation Person

-(id) init:(NSString *)n andAge:(NSInteger)m {
    //self.name = n;
    self.age = m;
    return self;
}

-(NSString*)description {
    return [NSString stringWithFormat:@"Name:%@, age: %ld",self->_name,(long)self.age];
}

@end
