//
//  FKUser.h
//  重写hahs
//
//  Created by 吴桐 on 2025/5/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FKUser : NSObject

@property(nonatomic, copy) NSString* idstr;
@property(nonatomic, assign) NSString* name;

-(id) initWithId:(NSString*) idstr andName:(NSString*) name;

@end

NS_ASSUME_NONNULL_END
