//
//  main.m
//  多态test
//
//  Created by 吴桐 on 2025/5/20.
//

#import <Foundation/Foundation.h>
#import "Baba.h"
#import "Son.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Son* a = [[Baba alloc] init];
      //  [a Son];
        [a Baba];
        [a test];
    }
    return 0;
}
