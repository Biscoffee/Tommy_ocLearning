//
//  FKPerson.h
//  Practice
//
//  Created by 吴桐 on 2025/5/18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FKPerson : NSObject

-(id) initWithName : (NSString*) name age : (NSInteger)age;
@dynamic NSString* name;


@end

NS_ASSUME_NONNULL_END
