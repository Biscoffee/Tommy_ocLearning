//
//  XiyouMobilePerson+XiyouMobilePersonCategory.m
//  520（2）
//
//  Created by 吴桐 on 2025/5/22.
//

#import "XiyouMobilePerson+XiyouMobilePersonCategory.h"

@implementation XiyouMobilePerson (XiyouMobilePersonCategory)
- (NSDictionary *)toDictionary {
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    
    if (self.name) {
        dict[@"name"] = self.name;
    } else {
        dict[@"name"] = [NSNull null];
    }
    
    dict[@"age"] = @(self.age);
    dict[@"iOS"] = @([self getIOS]);
    dict[@"web"] = @([self getWeb]);
    
    if ([self getAndroid]) {
        dict[@"android"] = [self getAndroid];
    } else {
        dict[@"android"] = [NSNull null];
    }
    
    if ([self getServer]) {
        dict[@"server"] = [self getServer];
    } else {
        dict[@"server"] = [NSNull null];
    }
    
    return [dict copy];
}
@end
