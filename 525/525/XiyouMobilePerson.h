//
//  XiyouMobilePerson.h
//  525
//
//  Created by 吴桐 on 2025/5/25.
//

#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface XiyouMobilePerson : Person {
@protected
    NSInteger iOS;
    NSInteger web;
    NSString* android;
    NSString* server;
}

@property(nonatomic,assign) NSInteger iOS;
@property(nonatomic,assign) NSInteger web;
@property(nonatomic,copy) NSString* android;
@property(nonatomic,copy) NSString* server;

-(void) fanhuidict;
@end

NS_ASSUME_NONNULL_END
