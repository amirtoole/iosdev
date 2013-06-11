//
//  BNRItem.h
//  RandomPossessions
//
//  Created by iadmin on 13-06-03.
//  Copyright (c) 2013 amir. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{

}

//using @property instead; default to strong
@property (nonatomic) BNRItem *containedItem;
@property (nonatomic, weak) BNRItem *container;

@property (nonatomic) NSString *itemName;
@property (nonatomic) NSString *serialNumber;
@property (nonatomic) int valueInDollars;
@property (nonatomic, readonly) NSDate *dateCreated;


- (id)initWithItemName:(NSString *)name
        valueInDollars:(int)value
          serialNumber:(NSString *)sNumber;

//static methods
+ (id)randomItem;


@end
