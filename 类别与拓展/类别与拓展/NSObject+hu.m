//
//  NSObject+hu.m
//  类别与拓展
//
//  Created by 吴桐 on 2025/5/19.
//

#import "NSObject+hu.h"

@implementation NSNumber (hu)
-(NSNumber*) add:(int)num2 {
    return [NSNumber numberWithInt:([self intValue] + num2)];
}

-(NSNumber*) substract:(int)num2 {
    return [NSNumber numberWithInt:([self intValue] - num2)];
}

-(NSNumber*) multiply:(int)num2 {
    return [NSNumber numberWithInt:([self intValue] * num2)];
}

-(NSNumber*) divide:(int)num2 {
    return [NSNumber numberWithInt:([self intValue] / num2)];
}
                               

@end
