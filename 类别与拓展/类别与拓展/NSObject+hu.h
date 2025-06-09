//
//  NSObject+hu.h
//  类别与拓展
//
//  Created by 吴桐 on 2025/5/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSNumber (hu)

-(NSNumber*) add:(int) num2;
-(NSNumber*) substract: (int) num2;
-(NSNumber*) multiply: (int) num2;
-(NSNumber*) divide: (int) num2;

@end

NS_ASSUME_NONNULL_END
