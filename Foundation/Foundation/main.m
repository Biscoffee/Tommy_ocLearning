//
//  main.m
//  Foundation
//
//  Created by 吴桐 on 2025/5/22.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSArray* initArray = [[NSArray alloc] initWithObjects:@"BV",@"Barbour",@"miumiu", nil];
//        NSLog(@"initArray: %@", initArray);
//        NSArray* initArray2 = [NSArray arrayWithObjects:@"BV",@"Barbour",@"miomio", nil];
//        NSArray* initArray3 = @[@"BV",@"On",@"Lulu"];
//        NSArray* initArray4 = [[NSArray alloc] initWithArray:initArray2];
//        NSLog(@"initArray2: %@", initArray2);
//        NSLog(@"initArray3: %@", initArray3);
//        NSLog(@"initArray4: %@", initArray4);
//        
//        NSInteger count = [initArray4 count];
//        NSLog(@"%ld",(long)count);
//        
//        NSString* str = [initArray objectAtIndex:1];  //从零开始，所以是第二个
//        NSLog(@"%@", str);
//        NSLog(@"%@", initArray[1]);
//        
//        BOOL flag = [initArray containsObject:@"BV"];
//        NSLog(@"%d", flag);
//        
//        for (NSString* name in initArray) {
//            NSLog(@"%@", name);
//        }
//        for (int i = 0; i < initArray.count; i++) {
//            NSLog(@"%@", initArray[i]);
//        }
//        
//        // 空数组
//        NSMutableArray* mutableArray = [NSMutableArray array];
//        NSMutableArray* mutableArray2 = [[NSMutableArray alloc] init];
//        NSArray* origin = @[@"A", @"B"];
//        NSMutableArray* mutableArray3 = [NSMutableArray arrayWithArray:origin];
//        
//        [mutableArray insertObject:@"Burberry" atIndex:0];
//        NSLog(@"mutableArray:%@", mutableArray);
//        [mutableArray addObject:@"ecco"];
//        NSLog(@"mutableArray:%@", mutableArray);
//        
//        NSMutableArray* mutableArray4 = [@[@"a", @"b",@"c", @"d"]mutableCopy];
//        NSLog(@"mutableArray4:%@", mutableArray4);
//        
//        [mutableArray4 replaceObjectAtIndex:3 withObject:@"dd"];
//        NSLog(@"mutableArray4:%@", mutableArray4);
//        
//        [mutableArray4 removeObject:@"c"];
//        NSLog(@"mutableArray4:%@", mutableArray4);
//        
//        [mutableArray4 removeObjectAtIndex:2];
//        NSLog(@"mutableArray4:%@", mutableArray4);
        
//        NSDictionary* init = [[NSDictionary alloc] initWithObjectsAndKeys:@"wutong",@"name",@18,@"age",@"RDFZ",@"school", nil];
//        //键在前，指在后
//        NSLog(@"init: %@",init);
//        
//        NSDictionary* init2 = @{@"name":@"tommy",@"age":@19, @"school":@"xupt"};
//        NSLog(@"init2: %@",init2);
//        
//        NSInteger count = [init count];
//        NSLog(@"count: %ld",count);
//        
//        //字典只能通过键去获取对应的值
//        //字典中键是唯一的
//        //获取所以的键-key
//        NSArray* allkey = [init allKeys];
//        NSLog(@"%@",allkey);
//        
//        //获取value同上
//        //通过key获取对应的value
//        NSString* name = [init objectForKey:@"name"];
//        NSLog(@"%@", name);
//        NSLog(@"%@", init[@"age"]);
//        
//        NSArray* testkey = [init allKeys];
//        for (id key in init) {
//            NSLog(@"%@ => %@", key, init[key]);
//        }
//
//        
//        NSMutableDictionary* initDic = [[NSMutableDictionary alloc] initWithCapacity:2];
//        
//        NSMutableDictionary* initDic2 = [@{@"name": @"a", @"age": @"10"}mutableCopy];
//        NSLog(@"%@", initDic2);
//        
//        [initDic2 setObject:@"Cici" forKey:@"friend"];
//        NSLog(@"%@", initDic2);
//        
//        [initDic2 setObject:@"ypt" forKey:@"name"];
//        NSLog(@"%@", initDic2);
//        
//        initDic2[@"age"] = @199;
//        NSLog(@"%@", initDic2);
//        
//        [initDic2 setValue:nil forKey:@"age"];
//        NSLog(@"%@", initDic2);
//        
//        [initDic2 removeObjectForKey:@"name"];
//        NSLog(@"%@", initDic2);
//        
        NSSet* initSet = [[NSSet alloc] initWithObjects:@"a",@"b",@"c", nil];
        NSLog(@"%@", initSet);
        
        NSSet* initSet2 = [NSSet setWithObjects:@"a",@"b",@"c", nil];
        NSLog(@"%@", initSet2);
        
        NSString* str = [initSet2 anyObject];
        NSLog(@"%@", str);
        
        NSMutableSet *mInitSet = [[NSMutableSet alloc]initWithCapacity:2];
            
            //添加 (再次添加后输出时还是只有一个，但是不会报错)
            [mInitSet addObject:@"xiaohong"];
            NSLog(@"mInitSet = %@",mInitSet);
            //重复添加是无效的，但是不会报错
            [mInitSet addObject:@"xiaohuang"];
            NSLog(@"mInitSet = %@",mInitSet);
            
            //删除
            [mInitSet removeObject:@"xiaohong"];
            NSLog(@"mInitSet = %@",mInitSet);
            
            //删除所有
            [mInitSet removeAllObjects];
            NSLog(@"mInitSet = %@",mInitSet);
    }
    return 0;
}




