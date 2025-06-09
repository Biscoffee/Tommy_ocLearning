//
//  main.m
//  NSArray
//
//  Created by 吴桐 on 2025/5/17.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray* array = @[@"Apple", @"Banana", @"Cherry"];
        for (NSString* fruit in array) {
            NSLog(@"水果：%@", fruit);
        }
        for (NSInteger i = 0; i < array.count; i++) {
            NSLog(@"元素 %ld：%@", i, array[i]);
        }
        
    }
    return 0;
}
