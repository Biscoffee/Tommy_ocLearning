//
//  Demand.h
//  520（2）
//
//  Created by 吴桐 on 2025/5/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Demand <NSObject>

@required
-(void) calculate;

@optional
-(void) unnecessary;

@end

NS_ASSUME_NONNULL_END
