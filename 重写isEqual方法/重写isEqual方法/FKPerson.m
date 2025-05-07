//
//  FKPerson.m
//  重写isEqual方法
//
//  Created by 吴桐 on 2025/5/7.
//

#import "FKPerson.h"
 
@implementation FKPerson
 
- (id) initWithName: (NSString*) name idStr: (NSString*) idStr {
    if(self = [super init]) {
        self.name = name;
        self.idStr = idStr;
    }
    return self;
}
- (BOOL) isEqual:(id) other {
    //如果两个对象指针相等，为同一个对象
    if(self == other) {
        return YES;
    }
    //当other不为nil且它为FKPerson的实例时
    if(other != nil && [other isMemberOfClass:FKPerson.class]) {
        FKPerson* target = (FKPerson*)other;
        //并且要判断当前对象的idStr和target对象的idStr相等才可以判断两个对象相等
        return [self.idStr isEqual: target.idStr];
    }
    return NO;
}
 
@end

