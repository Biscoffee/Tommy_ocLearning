//
//  XiyouMobilePerson.m
//  520（2）
//
//  Created by 吴桐 on 2025/5/22.
//

#import "XiyouMobilePerson.h"


@implementation XiyouMobilePerson

- (void)setIOS:(int)iOS {
    if (iOS % 2 == 0)
        _iOS = iOS - 1;
    else
        _iOS = iOS + 1;
}
- (int)getIOS {
    return _iOS;
}

- (void)setWeb:(int)web { _web = web; }
- (int)getWeb { return _web; }

- (void)setAndroid:(NSString *)android { _android = android; }
- (NSString *)getAndroid { return _android; }

- (void)setServer:(NSString *)server { _server = server; }
- (NSString *)getServer { return _server; }

- (void)calculate {
    NSLog(@"iOS + Web = %d", _iOS + _web);
}

@end
