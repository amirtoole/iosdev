//
//  BNRItem.m
//  RandomPossessions
//
//  Created by iadmin on 13-06-03.
//  Copyright (c) 2013 amir. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

- (NSString *) itemName
{
    //return a pointer to the object this BNRItem calls its itemName
    return itemName;
}

- (void)setItemName:(NSString *)newItemName
{
    //change instance var to point to another string
    //this BNRItem will now call this new string its itemName
    itemName = newItemName;
}

- (void)setSerialNumber:(NSString *)str
{
    serialNumber = str;
}

- (NSString *)serialNumber;
{
    return serialNumber;
}

- (void)setValueInDollars:(int)i;
{
    valueInDollars = i;
}

- (int)valueInDollars;
{
    return valueInDollars;
}

- (NSDate *)dateCreated
{
    return dateCreated;
}

- (NSString *) description
{
    NSString *descriptionString =
    [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@",
                            itemName,
                            serialNumber,
                            valueInDollars,
                            dateCreated];
    
    return descriptionString;
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


@end
