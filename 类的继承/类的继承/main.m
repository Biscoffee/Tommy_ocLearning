//
//  main.m
//  类的继承
//
//  Created by 吴桐 on 2025/5/7.
//

#import <Foundation/Foundation.h>

@interface Fruit : NSObject
@property (nonatomic) double weight;
@end

@interface Apple : Fruit
@end

@implementation Fruit
// 在现代 Objective-C 中可以省略 @synthesize
@end

@implementation Apple
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        Apple* greenApple = [[Apple alloc] init];
        greenApple.weight = 15.87; //调用setter方法
        NSLog(@"%lg", greenApple.weight);
    }
    return 0;
}

