//
//  XiyouMobilePerson.h
//  520
//
//  Created by 吴桐 on 2025/5/20.
//

#import "Person.h"
#import "Demand.h"

NS_ASSUME_NONNULL_BEGIN

@interface XiyouMobilePerson : Person<Demand>

@property (atomic,assign) NSInteger iOS;
@property (nonatomic,assign) NSInteger web;
@property (nonatomic, copy) NSString* android;
@property (nonatomic, copy) NSString* server;

-(void) calculate;

@end

NS_ASSUME_NONNULL_END
