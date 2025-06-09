//
//  FKPerson.m
//  Practice
//
//  Created by 吴桐 on 2025/5/18.
//

#import "FKPerson.h"

@implementation FKPerson

-(id) initWithName : (NSString*) name age : (NSInteger)age {
    if (self = [super init]) {
        _name = name;
        _age = age;
    }
    return self;
}
@end
