//
//  XiyouMobilePerson.m
//  520
//
//  Created by 吴桐 on 2025/5/20.
//

#import "XiyouMobilePerson.h"

@implementation XiyouMobilePerson

-(void)setIOS:(NSInteger)iOS {
    if (iOS % 2 == 0) {
        iOS -= 1;
    } else {
        iOS += 1;
    }
    
}

-(void)calculate {
    NSLog(@"%ld", (long)(self.iOS + self.web));
}

@end
