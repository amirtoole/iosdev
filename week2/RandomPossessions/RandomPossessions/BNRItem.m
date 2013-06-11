//
//  BNRItem.m
//  RandomPossessions
//
//  Created by iadmin on 13-06-03.
//  Copyright (c) 2013 amir. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem
@synthesize itemName,containedItem,container,serialNumber,valueInDollars,dateCreated;


//overriding setContainedItem
- (void)setContainedItem:(BNRItem *)i
{
    containedItem = i;
    [i setContainer:self];
}


- (id)initWithItemName:(NSString *)name
        valueInDollars:(int)value
          serialNumber:(NSString *)sNumber
{
    self = [super init];
    
    if (self) {
        [self setItemName:name];
        [self setSerialNumber:sNumber];
        [self setValueInDollars:value];
        dateCreated = [[NSDate alloc] init];
    }
        
    return self;
}

- (void)dealloc
{
    NSLog(@"Destroyed: %@", self);
}


//static methods
+ (id)randomItem
{
    //create an array of three adjectives
    NSArray *randomAdjectiveList = [NSArray arrayWithObjects:@"Fluffy",
                                                             @"Rusty",
                                                             @"Shiny",
                                                             nil];
    NSArray *randomNounList = [NSArray arrayWithObjects:@"Bear",
                                                        @"Spork",
                                                        @"Mac",
                                                        nil];
    
    NSInteger adjectiveIndex = rand() % [randomAdjectiveList count];
    NSInteger nounIndex = rand() % [randomNounList count];
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
                [randomAdjectiveList objectAtIndex:adjectiveIndex],
                [randomNounList objectAtIndex:nounIndex]];


    int randomValue = rand() * 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    '0' + rand() % 10,
                                    'A' + rand() % 26,
                                    '0' + rand() % 10,
                                    'A' + rand() % 26,
                                    '0' + rand() % 10];

    BNRItem * newItem =
    [[self alloc] initWithItemName:randomName
                     valueInDollars:randomValue
                       serialNumber:randomSerialNumber];
    
    return newItem;
}


@end
