//
//  father.h
//  重写父类方法
//
//  Created by 吴桐 on 2025/5/7.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface father : FKPerson

@property (nonatomic,copy) NSString *str;
@property (nonatomic,assign) int num;

-(void) test1;
-(void) test2;

@end

NS_ASSUME_NONNULL_END
