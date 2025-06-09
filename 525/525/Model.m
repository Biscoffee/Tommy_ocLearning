//
//  Model.m
//  525
//
//  Created by 吴桐 on 2025/5/25.
//
#import "Model.h"

@implementation Model

-(instancetype)init {
    if (self = [super init]) {
        _xiyouMobileArray = [NSMutableArray array];
        _xiyouMobileDict = [NSMutableDictionary dictionary];
        //_xiyouMobileArray = [NSMutableDictionary dictionary];
    }
    return self;
}

//- (instancetype)initWithName:(NSString *)name age:(NSInteger)age {
//    self = [super init];
//    if (self) {
//        self.name = name;
//        self.age = age;
//    }
//    return self;
//}

@end
