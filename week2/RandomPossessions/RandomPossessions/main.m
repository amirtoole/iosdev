//
//  main.m
//  RandomPossessions
//
//  Created by iadmin on 13-05-13.
//  Copyright (c) 2013 amir. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
//        NSLog(@"Hello, World!");
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
//        [items addObject:@"one"];
//        [items addObject:@"two"];
//        [items addObject:@"three"];
        
//        [items insertObject:@"zero" atIndex:0];
//        [items insertObject:@"last" atIndex:[items count]];
        
//        BNRItem *p = [[BNRItem alloc] init];
//        
//        [p setItemName:@"Red Sofa"];
//        
//        [p setSerialNumber:@"A1B2C"];
//        
//        [p setValueInDollars:100];

//        BNRItem *p = [[BNRItem alloc] initWithItemName:@"Red Sofa" valueInDollars:100 serialNumber:@"A1B2C"];

        
//        for (int i = 0; i < 10; i++) {
//            BNRItem *p = [BNRItem randomItem];
//            [items addObject:p];
//        }
//        
//        for (int i = 0; i < [items count]; i++) {
//            NSLog(@"%@", [items objectAtIndex:i]);
//        }


        BNRItem *backpack = [[BNRItem alloc] init];
        [backpack setItemName:@"Backpack"];
        [items addObject:backpack];
        
        BNRItem *calculator = [[BNRItem alloc] init];
        [calculator setItemName:@"Calculator"];
        [items addObject:calculator];
        
        [backpack setContainedItem:calculator];
        
        
        //this is commented out b/c we now have [p description] which we can just reference using p
//        NSLog(@"%@ %@ %@ %d", [p itemName], [p dateCreated], [p serialNumber], [p valueInDollars]);
//        NSLog(@"%@", p);
        
        //destroy w/ garbage collection
        
        NSLog(@"Setting items to nil...");
        
        items = nil;
        
    }
    return 0;
}

