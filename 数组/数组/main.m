//
//  main.m
//  数组
//
//  Created by 吴桐 on 2025/5/21.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray* array = [NSArray arrayWithObjects:@"LV", @"Burberry",@"BV",@"LR" ,@"miumiu",nil];
        NSLog(@"first:%@",[array objectAtIndex:1]);
        NSLog(@"last:%@",[array lastObject]);
        NSArray* array1 = [array objectsAtIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(2, 1)]];
        NSLog(@"%@",array1);
        NSLog(@"miumiu: %ld", [array indexOfObject:@"miumiu"]);
        NSLog(@"BV in(2,2) :%ld", [array indexOfObject:@"BV" inRange: NSMakeRange(2, 2)]);
        array = [array arrayByAddingObject:@"Mr.Dandy"];
        array = [array arrayByAddingObjectsFromArray:[NSArray arrayWithObjects:@"alo", @"an", nil]];
        for (int i = 0; i < array.count; i++) {
            NSLog(@"%@", [array objectAtIndex:i]);
        }
        NSArray* array2 = [array subarrayWithRange:NSMakeRange(2, 1)];
        for (int i = 0; i < array2.count; i++) {
            NSLog(@"%@", [array2 objectAtIndex:i]);
        }
    }
    return 0;
}


