//
//  main.m
//  1
//
//  Created by 吴桐 on 2025/4/28.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    //实例变量声明
    int identify;
    int age;
}
//方法声明
- (id) initWithAge:(int) _age identify: (int) _identify;
- (int) getIdentify;
- (int) getAge;
- (void) setAge:(int) _age;
@end


@implementation Person

-(id) initWithAge:(int)_age identify:(int)_identify:(int) _identify
{
    if(self = [super init])
    {
        age = _age;
        identify = _identify;
    }
    return self;
}
- (int) getIdentify
{
    return identify;
}
-(int) getAge
{
    return age;
}
-(void) setAge:(int)_age
{
    age = _age;
}

@end



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
