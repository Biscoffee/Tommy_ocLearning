//
//  FKPrintable.h
//  协议与委托
//
//  Created by 吴桐 on 2025/5/19.
//

#import <Foundation/Foundation.h>
#import "FKOutput.h"
#import "FKProductable.h"

NS_ASSUME_NONNULL_BEGIN

@protocol FKPrintable <FKOutput,FKProductable>

-(NSString*) printColor;

@end

NS_ASSUME_NONNULL_END
