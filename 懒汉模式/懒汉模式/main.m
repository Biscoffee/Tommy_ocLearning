//
//  main.m
//  懒汉模式
//
//  Created by 吴桐 on 2025/5/19.
//

// main.m
#import <Foundation/Foundation.h>
#import "Singleton.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Singleton *obj1 = [Singleton sharedInstance];
        Singleton *obj2 = [Singleton sharedInstance];
        Singleton *obj3 = [[Singleton alloc] init];
        Singleton *obj4 = [obj1 copy];
        Singleton *obj5 = [obj1 mutableCopy];

        NSLog(@"obj1: %p", obj1);
        NSLog(@"obj2: %p", obj2);
        NSLog(@"obj3: %p", obj3);
        NSLog(@"obj4: %p", obj4);
        NSLog(@"obj5: %p", obj5);

        if (obj1 == obj2 && obj2 == obj3 && obj3 == obj4 && obj4 == obj5) {
            NSLog(@"✅ 单例模式测试通过：所有对象地址相同");
        } else {
            NSLog(@"❌ 单例模式测试失败：存在多个实例");
        }
    }
    return 0;
}
