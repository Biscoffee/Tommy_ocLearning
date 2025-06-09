//
//  XiyouMobilePerson.h
//  520（2）
//
//  Created by 吴桐 on 2025/5/22.
//

#import "Person.h"
#import "Demand.h"
NS_ASSUME_NONNULL_BEGIN

@interface XiyouMobilePerson : Person<Demand> {
@protected
    int _iOS;
    int _web;
    NSString* _android;
    NSString* _server;
}

- (void)setIOS:(int)iOS;
- (int)getIOS;
- (void)setWeb:(int)web;
- (int)getWeb;
- (void)setAndroid:(NSString *)android;
- (NSString *)getAndroid;
- (void)setServer:(NSString *)server;
- (NSString *)getServer;
- (void) calculate;
- (id) initWithName:(NSString *)aName andage:(int)age;
@end

NS_ASSUME_NONNULL_END
