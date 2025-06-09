//
//  FKUser.h
//  容器类对象的完全深拷贝
//
//  Created by 吴桐 on 2025/5/19.
//

#import <Foundation/Foundation.h>
@interface FKUser : NSObject <NSCopying>

@property (nonatomic, strong) NSMutableString *name;
@property (nonatomic, copy) NSString *pass;
- (id)initWithName:(NSString *)name pass:(NSString *)pass;

@end
