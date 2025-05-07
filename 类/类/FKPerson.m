//
//  FKPerson.m
//  类
//
//  Created by 吴桐 on 2025/4/28.
//

#import "FKPerson.h"

@implementation FKPerson
{
    int _testAttr;
}

-(void) setName:(NSString*) n andAge: (int) a {
    _name = n;
    _age = a;
}

-(void)say:(NSString *) content
{
    NSLog(@"%@" , content);
}

-(NSString*) info
{
    [self test];
    
    return [NSString stringWithFormat:
            @"我是一个人，名字为：%@，年龄为%d。" , _name, _age];
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"123");
        self->_name = @"123333";
        self->_age = 123;
    }
    return self;
}

-(void) test
{
    NSLog(@"FKPersonw类的类方法，通过类名调用");
}

+ (void) foo
{
    NSLog(@"FKPerson的类的类方法，通过类名调用");
}
@end
