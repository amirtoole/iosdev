//
//  main.m
//  RandomPossessions
//
//  Created by joeconway on 7/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"
#import "BNRContainer.h"

int main (int argc, const char * argv[])
{
    @autoreleasepool {        
//        BNRItem *backpack = [[BNRItem alloc] init];
//        [backpack setItemName:@"Backpack"];
//
//        
//        BNRItem *calculator = [[BNRItem alloc] init];
//        [calculator setItemName:@"Calculator"];
//
//        [backpack setContainedItem:calculator];
//        
//        backpack = nil;
//        
//        NSLog(@"Container: %@", [calculator container]);
//        
//        calculator = nil;
        
        //A1 Gold Challenge: Another class
        
        BNRContainer *container1 = [[BNRContainer alloc] initWithItemName:@"Container1" valueInDollars:5 serialNumber:@"container1"];
        
        BNRItem *item1 = [[BNRItem alloc] initWithItemName:@"Item1" valueInDollars:5 serialNumber:@"item1"];
        BNRItem *item2 = [[BNRItem alloc] initWithItemName:@"Item2" valueInDollars:10 serialNumber:@"item2"];
        BNRItem *item3 = [[BNRItem alloc] initWithItemName:@"Item3" valueInDollars:10 serialNumber:@"item3"];
        
        BNRContainer *container2 = [[BNRContainer alloc] initWithItemName:@"Container2" valueInDollars:10 serialNumber:@"container2"];
        BNRItem *item4 = [[BNRItem alloc] initWithItemName:@"Item4" valueInDollars:10 serialNumber:@"item4"];
        
        [container2 addItem:item4];
        [container1 addItem:container2];
        
        [container1 addItem:item1];
        [container1 addItem:item2];
        [container1 addItem:item3];
        
        NSLog(@"%@", [container1 description]);

    }
    return 0;
}

