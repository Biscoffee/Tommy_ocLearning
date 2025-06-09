//
//  FKPrinter.m
//  协议与委托
//
//  Created by 吴桐 on 2025/5/19.
//

#import "FKPrinter.h"
#define MAX_CACHE_LINE 10

@implementation FKPrinter {
    NSString* printfData[MAX_CACHE_LINE];
    int dataNum;
}

-(void) output {
    while (dataNum > 0) {
        NSLog(@"他穿：%@衣服，他是%@",self.printColor, printfData[0]);
        dataNum--;
        for (int i = 0; i < dataNum; i++) {
            printfData[i] = printfData[i + 1];
        }
    }
}

-(void) addData:(NSString *)msg {
    if (dataNum >= MAX_CACHE_LINE) {
        NSLog(@"ggg满了，别学了");
    } else {
        printfData[dataNum++]  = msg;
    }
}

-(NSDate*) getProductTime {
    return [[NSDate alloc] init];
}

-(NSString*) printColor {
    return @"五颜六色";
}

@end
