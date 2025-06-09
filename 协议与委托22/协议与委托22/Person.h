//
//  Person.h
//  协议与委托22
//
//  Created by 吴桐 on 2025/5/20.
//
#import <Foundation/Foundation.h>
#import "fk.h"
 
NS_ASSUME_NONNULL_BEGIN
 
@interface Person : NSObject<fk>
 
@property (nonatomic,copy) NSString* name;
@property (nonatomic,assign) NSInteger id;
 
@end
 
NS_ASSUME_NONNULL_END

