//
//  main.m
//  特性的指示符copy
//
//  Created by 吴桐 on 2025/5/7.
//

#import <Foundation/Foundation.h>

@interface Fkbaskerball : NSObject {
    ;
}
@property (nonatomic) NSString* name;
@end
@implementation Fkbaskerball {
    
}
@synthesize name;
@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        Fkbaskerball* f1 = [[Fkbaskerball alloc] init];
        NSMutableString* str = [NSMutableString stringWithString:@"blackman"]; //NSMutableString是子类可以被修改的字符串类型。
        [f1 setName: str];
        NSLog(@"他叫：%@", [f1 name]);
        [str appendString:@" is good"];
        NSLog(@"%@", [f1 name]);
    }
    return 0;
}


