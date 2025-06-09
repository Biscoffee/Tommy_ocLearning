//
//  Person.h
//  fkd
//
//  Created by 吴桐 on 2025/5/18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject <NSCopying, NSMutableCopying>
@property (nonatomic, strong) NSMutableString *name;
@property (nonatomic, assign) NSInteger age;
@end;

NS_ASSUME_NONNULL_END
