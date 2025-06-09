//
//  main.m
//  NSString
//
//  Created by 吴桐 on 2025/5/17.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate* d = [NSDate date];
        NSLog(@"%@",d);
        NSDate* e = [[NSDate alloc] initWithTimeIntervalSinceNow:3600*33];
        NSLog(@"%@",e);
        
        NSDateFormatter* f = [[NSDateFormatter alloc]init];
        [f setDateFormat:@"yyyy-MM-DD-HH-mm"];
        NSLog(@"%@", [f stringFromDate:d]);
    }
    return 0;
}
