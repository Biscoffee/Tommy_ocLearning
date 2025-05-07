//
//  main.m
//  super关键字
//
//  Created by 吴桐 on 2025/5/7.
//


@implementation nnnn
@synthesize a = _a;
- (id) init {
    if (self = [super init]) {
        self->_a = 6;
    }
    return self;
}
@end
@implementation nextnnnn {
    int _a;
}
- (id) init {
    if (self = [super init]) {
        self->_a = 7;
    }
    return self;
}
- (void) answer { //通过这个来打印当前类中的成员变量
    NSLog(@"父类中的变量%d", super.a);
    NSLog(@"子类中的成员变量%d", self->_a);
}
@end
  
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello, World!");
        nextnnnn* p1 = [[nextnnnn alloc] init];
        [p1 answer];
    }
    return 0;
}

