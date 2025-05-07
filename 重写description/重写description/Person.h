//
//  Person.h
//  重写description
//
//  Created by 吴桐 on 2025/5/7.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property (nonatomic,copy) NSString* name;
@property (nonatomic,assign) int age;

-(id) initWithName:(NSString*) name Age: (int) age;
-(NSString*) description;

@end

NS_ASSUME_NONNULL_END
