//
//  Person.h
//  520（2）
//
//  Created by 吴桐 on 2025/5/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject<NSCopying>
@property(nonatomic, copy) NSString* name;
@property(nonatomic, assign) NSInteger age;

-(id) initWithName:(NSString*) aName andage:(int) age;
-(void) description;
//-(void)setName:(NSString *)aName;
//- (NSString *)getName;
//- (void)setAge:(NSInteger)a;
//- (NSInteger)getAge;

@end

NS_ASSUME_NONNULL_END
