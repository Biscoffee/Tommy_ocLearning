//
//  Singleton.m
//  520（2）
//
//  Created by 吴桐 on 2025/5/22.
//

#import "Singleton.h"

@implementation Singleton

+(id)sharedInstance {
    static Singleton* instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[super allocWithZone:nil]init];
    });
    return instance;
}

+(id) allocWithZone:(struct _NSZone *)zone {
    return [self sharedInstance];
}

-(id) copyWithZone:(NSZone*) zone {
    return self;
}

-(id) mutableCopyWithZone:(NSZone*)zone {
    return self;
}
@end
