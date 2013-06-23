//
//  BNRContainer.m
//  RandomPossessions
//
//  Created by amir on 2013-06-23.
//
//

#import "BNRContainer.h"

@interface BNRContainer ()
{
    NSMutableArray *items;
}

@end

@implementation BNRContainer

- (id)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber
{
    self = [super initWithItemName:name valueInDollars:value serialNumber:sNumber];
    items = [[NSMutableArray alloc] init];
    return  self;
}

- (void)addItem:(id)item
{
    [items addObject:item];
}

- (int)valueInDollars
{
    int totalValue = 0;
    for (id item in items)
    {
        totalValue = totalValue + [item valueInDollars];
    }
    return totalValue;
}


-(NSString *)description
{
    return [[NSString alloc] initWithFormat:@"Item name: %@  Value: %d  Sub items: %@", super.itemName, [self valueInDollars], items];
}


@end
