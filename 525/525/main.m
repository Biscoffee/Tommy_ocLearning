//
//  main.m
//  525
//
//  Created by 吴桐 on 2025/5/25.
//

#import <Foundation/Foundation.h>
#import "Model.h"
#import "XiyouMobilePerson.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Model* model = [[Model alloc] init];
        for (int i = 0; i < 5; i++) {
            XiyouMobilePerson* person = [[XiyouMobilePerson alloc] init];
            person.iOS = i;
            person.web = i;
            person.android = [NSString stringWithFormat:@"android-%d", i];
            person.server = [NSString stringWithFormat:@"server-%d", i];
            [model.xiyouMobileArray addObject:person];
        }
        
        XiyouMobilePerson* maxiOSperson = nil;
        int maxiOSvalue = 0;
        for (XiyouMobilePerson *person in model.xiyouMobileArray) {
            if (maxiOSvalue < person.iOS) {
                maxiOSvalue = person.iOS;
                maxiOSperson = person;
            }
        }
        if (maxiOSperson != nil) {
            NSLog(@"iOS最大：%@，iOS值：%d", maxiOSperson.name, maxiOSperson.iOS);
        }
        
        NSRange rangeMove = NSMakeRange(2, 2);
        [model.xiyouMobileArray removeObjectsInRange:rangeMove];
        
        
        XiyouMobilePerson* iOSperson = [@{@"key":@"iOS", @"Value":@"胖猫"} mutableCopy];
        NSDictionary* iOSperonn = @{@"key":@"iOS", @"Value":@"胖猫"};
        XiyouMobilePerson* Androidperson = [@{@"key":@"Android", @"Value":@"乌萨奇"} mutableCopy];
        NSLog(@"%@", Androidperson);
        XiyouMobilePerson* serverperson = [@{@"key": @"Server", @"Value":@"奶龙"} mutableCopy];
        NSLog(@"Key: iOS, Value: %@", iOSperonn[@"Value"]);
        
        Person *person1 = [[Person alloc] initWithName:@"pp" age:@19];
        Person *person2 = [[Person alloc] initWithName:@"pp" age:@19];

        NSSet *set = [NSSet setWithObjects:person1, person2, nil];
        NSLog(@"集合内容: %@", set);
    }
    return 0;
}
