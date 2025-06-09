//
//  Singleton.h
//  单例li
//
//  Created by 吴桐 on 2025/5/18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Singleton : NSObject <NSCopying,NSMutableCopying>

+(id) shareInstance;

@end

NS_ASSUME_NONNULL_END
