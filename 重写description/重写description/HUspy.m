//
//  HUspy.m
//  重写description
//
//  Created by 吴桐 on 2025/5/19.
//

#import "HUspy.h"

@implementation HUspy

-(NSString *)description {
    return [NSString stringWithFormat:@"%@, %ld",self.name, (long)self.age];
}

@end
