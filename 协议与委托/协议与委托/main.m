//
//  main.m
//  协议与委托
//
//  Created by 吴桐 on 2025/5/19.
//

#import <Foundation/Foundation.h>
#import "FKPrinter.h"
#include "FKPrintable.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKPrinter* p = [[FKPrinter alloc] init];
        [p addData:@"科比"];
        [p addData:@"杨坤"];
        [p addData:@"南寻"];
        [p addData:@"孙燕姿"];
        [p output];
        NSObject<FKProductable> *y = [[FKPrinter alloc] init];
        NSLog(@"%@", p.getProductTime);
        
        id<FKOutput>out = [[FKPrinter alloc] init];
        [out addData:@"456"];
        [out output];
    }
    return 0;
}
