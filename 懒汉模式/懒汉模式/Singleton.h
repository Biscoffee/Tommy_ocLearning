//
//  Singleton.h
//  懒汉模式
//
//  Created by 吴桐 on 2025/5/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Singleton : NSObject

+(id) sharedInstance;

@end

NS_ASSUME_NONNULL_END
