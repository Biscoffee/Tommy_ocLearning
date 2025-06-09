//
//  FKUser.m
//  重写hahs
//
//  Created by 吴桐 on 2025/5/19.
//

#import "FKUser.h"

@implementation FKUser

-(id) initWithId:(NSString*) idstr andName:(NSString*) name {
    if (self = [super init]) {
        self.idstr = [idstr copy];
        self.name = [name copy];
    }
    return self;
}

-(BOOL) isEqual:(id)object {
    if (self == object) {
        return YES;
    } else if (object != nil && [object isMemberOfClass:FKUser.class]) {
        FKUser* target = (FKUser*) object;
        return [self.idstr isEqual: target.idstr];
    }
    return NO;
}

@end
