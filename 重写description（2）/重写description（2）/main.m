//
//  main.m
//  重写description（2）
//
//  Created by 吴桐 on 2025/5/7.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) int age;
@end

@implementation Person

//重写 description 方法
- (NSString *)description {
    return [NSString stringWithFormat:@"Person: name=%@, age=%d", self.name, self.age];
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[Person alloc] init];
        p.name = @"Tom";
        p.age = 20;

        // 打印对象
        NSLog(@"%@", p); // 自动调用 [p description]
    }
    return 0;
}
