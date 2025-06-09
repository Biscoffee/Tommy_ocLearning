//
//  FKOutput.h
//  协议与委托
//
//  Created by 吴桐 on 2025/5/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol FKOutput <NSObject>
-(void) output;
-(void) addData:(NSString*) msg;
@end

NS_ASSUME_NONNULL_END
