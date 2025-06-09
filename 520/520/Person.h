//
//  Person.h
//  520
//
//  Created by 吴桐 on 2025/5/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject {
    @private
    NSString* _name;
}

@property (nonatomic,copy) NSMutableString* name;
@property (nonatomic,assign) NSInteger age;

-(instancetype)init: (NSString*) name andAge : (NSInteger) age;
@end

NS_ASSUME_NONNULL_END
