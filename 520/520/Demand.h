//
//  Demand.h
//  520
//
//  Created by 吴桐 on 2025/5/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Demand <NSObject>

@required
-(void) calculate;

@optional
-(id) unnecessary;

@end

NS_ASSUME_NONNULL_END
