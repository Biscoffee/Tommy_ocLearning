//
//  main.m
//  kaobei
//
//  Created by 吴桐 on 2025/5/18.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableString* str1 = [NSMutableString stringWithString:@"helloworld"];
        NSMutableString* str2 = [str1 copy];
      //  [str2 appendString:@"111"];
        NSMutableString* str3 = [str1 mutableCopy];
        [str3 appendString:@"111"];
        NSString* str4 = [str1 copy];
      //  [str4 appendString:@"111"];
        NSString* str5 = [str1 mutableCopy];
      //  [str5 appendString:@"111"];
        NSLog(@"str1:%@", str1);
        NSLog(@"str2:%@", str2);
        NSLog(@"str3:%@", str3);
        NSLog(@"str4:%@", str4);
        NSLog(@"str5:%@", str5);
    }
    return 0;
}

