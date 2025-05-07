//
//  Person.m
//  重写description
//
//  Created by 吴桐 on 2025/5/7.
//

#import "Person.h"

@implementation Person

@synthesize name;
@synthesize age;

-(id) initWithName:(NSString *)name Age:(int)age {
    if (self = [super init]) {
        self.name = name;
        self.age = age;
    }
    return self;
}
-(NSString*) description {
    return [NSString stringWithFormat:@"Person [name = %@,age = %d]>",self.name,self.age];
}

@end
