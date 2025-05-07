//
//  FKPerson.h
//  类
//
//  Created by 吴桐 on 2025/4/28.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FKPerson : NSObject
{
    //下面定义两个成员变量
    NSString* _name;
    int _age;
}
//下面定义了一个setName:andAge:方法
-(void)setName:(NSString*) name andAge: (int) age;
//下面定义了一个say：方法，但不提供实现
-(void) say: (NSString *) content;
//下面定义了一个不带形参的info方法
-(NSString*) info;
//定义了一个类方法
+ (void) foo;
@end

NS_ASSUME_NONNULL_END
