//
//  BNRItemStore.h
//  Homepwner
//
//  Created by iadmin on 13-07-22.
//  Copyright (c) 2013 amir. All rights reserved.
//

#import <Foundation/Foundation.h>

//this annotation tells the compiler that BNRItem class exists, but doesn't tell it anything about it
//helps increase compiler speed
@class BNRItem;

@interface BNRItemStore : NSObject
{
    NSMutableArray *allItems;
}

//static method
+ (BNRItemStore *)sharedStore;

- (NSArray *)allItems;
- (BNRItem *)createItem;

@end
