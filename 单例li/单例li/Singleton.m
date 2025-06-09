//
//  Singleton.m
//  单例li
//
//  Created by 吴桐 on 2025/5/18.
//

#import "Singleton.h"

static id _instance = nil;
@implementation Singleton

+(id) shareInstance {
    return [[self alloc] init];
}

+(id) allocWithZone:(struct _NSZone *)zone {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [super allocWithZone: zone];
    });
    return _instance;
}

@end
