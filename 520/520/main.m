//
//  main.m
//  520
//
//  Created by 吴桐 on 2025/5/20.
//

#import <Foundation/Foundation.h>
#import "Singleton.h"
#import "Model.h"
#import "XiyouMobilePerson.h"
#import "Person.h"

#import "NSObject+XiyouMobilePersonCategory.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Singleton* p1 = [Singleton sharedInstance];
        Singleton* p2 = [[Singleton alloc] init];
        Singleton* p3 = [p1 copy];
        Singleton* p4 = [p1 mutableCopy];
        NSLog(@"%p %p %p %p",p1,p2,p3,p4);
        Model* q = [[Model alloc] init];
        NSObject* obj = [NSObject alloc];
        [obj ertyu];
        Person* e = [[Person alloc] init:@"GGG" andAge: 9];
        NSMutableString* string = [@"123" mutableCopy];
        e.name = string;
        NSLog(@"%@", e.name);
        [string appendString:@"123"];
        NSMutableArray* ary = [@[] mutableCopy];
        [ary removeObjectsInRange:NSMakeRange(, )];
        [e.name appendFormat:@"%@%ld", @"123", 123];
        
        NSLog(@"%@",e);
    }
    return 0;
}
