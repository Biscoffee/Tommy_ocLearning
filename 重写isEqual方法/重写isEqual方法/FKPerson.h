//
//  FKPerson.h
//  重写isEqual方法
//
//  Created by 吴桐 on 2025/5/7.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface FKPerson : NSObject

@property (nonatomic,copy) NSString* name;
@property (nonatomic,copy) NSString* idStr;

-(id) initWithName: (NSString*) name idStr: (NSString*) idStr;

@end

NS_ASSUME_NONNULL_END
