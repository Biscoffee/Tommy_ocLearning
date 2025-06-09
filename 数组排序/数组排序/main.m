//
//  main.m
//  数组排序
//
//  Created by 吴桐 on 2025/5/21.
//

#import <Foundation/Foundation.h>
NSInteger inSort (id num1, id num2, void* context) {
    int v1 = [num1 intValue];
    int v2 = [num2 intValue];
    if (v1 < v2) {
        return NSOrderedAscending;
    } else if (v1 == v2) {
        return NSOrderedSame;
    } else {
        return NSOrderedDescending;
    }
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray* array1 = [NSArray arrayWithObjects:@"C++",@"Python",@"Perl",@"C",@"Objective-C",@"Ruby", nil];
        array1 = [array1 sortedArrayUsingSelector:@selector(compare:)];
        NSLog(@"%@", array1);
        NSArray* array2 = [NSArray arrayWithObjects:[NSNumber numberWithInt:20], [NSNumber numberWithInt:12], [NSNumber numberWithInt:-8],[NSNumber numberWithInt:50], [NSNumber numberWithInt:19],nil];
        array2 = [array2 sortedArrayUsingFunction:inSort context:nil];
        NSLog(@"%@", array2);
        NSArray* array3 = [array2 sortedArrayUsingComparator:^(id obj1, id obj2) {
            if ([obj1 intValue] > [obj2 intValue]) {
                return NSOrderedDescending;
            } else if ([obj1 intValue] < [obj2 intValue]) {
                return NSOrderedAscending;
            } else {
                return NSOrderedSame;
            }
        }];
        NSLog(@"%@", array3);
    }
    return 0;
}


