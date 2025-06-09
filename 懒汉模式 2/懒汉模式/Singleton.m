//
//  Singleton.m
//  懒汉模式
//
//  Created by 吴桐 on 2025/5/19.
//

#import "Singleton.h"

@implementation Singleton

// 懒汉式线程安全单例
+ (instancetype)sharedInstance {
    static Singleton *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[super allocWithZone:NULL] init];
    });
    return instance;
}

// 防止通过 alloc/init 创建新实例
+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    return [self sharedInstance];
}

// 防止 copy
- (id)copyWithZone:(NSZone *)zone {
    return self;
}

// 防止 mutableCopy
- (id)mutableCopyWithZone:(NSZone *)zone {
    return self;
}

@end
