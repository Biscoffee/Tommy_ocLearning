//
//  main.m
//  对象的初始化
//
//  Created by 吴桐 on 2025/5/7.
//

#import <Foundation/Foundation.h>

@interface Fkbaskerball : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) int time;
@property (nonatomic, assign) int value;

- (id)init;
- (id)initWithname:(NSString *)name andTime:(int)time;
- (id)initWithname:(NSString *)name andTime:(int)time andValue:(int)value;

@end

@implementation Fkbaskerball

- (id)init {
    if (self = [super init]) {
        self.name = @"messi";
        self.time = 35;
        self.value = 1000;
    }
    return self;
}

- (id)initWithname:(NSString *)name andTime:(int)time {
    if (self = [super init]) {
        self.name = name;
        self.time = time;
        self.value = 0; // 默认值
    }
    return self;
}

- (id)initWithname:(NSString *)name andTime:(int)time andValue:(int)value {
    if (self = [self initWithname:name andTime:time]) {
        self.value = value;
    }
    return self;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fkbaskerball *f1 = [[Fkbaskerball alloc] init];
        NSLog(@"%@ %d %d", f1.name, f1.value, f1.time);
        
        Fkbaskerball *f2 = [[Fkbaskerball alloc] initWithname:@"neyal" andTime:30];
        NSLog(@"%@ %d %d", f2.name, f2.value, f2.time);
        
        Fkbaskerball *f3 = [[Fkbaskerball alloc] initWithname:@"manba" andTime:40 andValue:1500];
        NSLog(@"%@ %d %d", f3.name, f3.value, f3.time);
    }
    return 0;
}
