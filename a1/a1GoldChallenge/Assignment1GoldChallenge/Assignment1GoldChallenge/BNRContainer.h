//
//  BNRContainer.h
//  Assignment1GoldChallenge
//
//  Created by amir on 2013-06-16.
//  Copyright (c) 2013 amir. All rights reserved.
//

#import "BNRItem.h"

@interface BNRContainer : BNRItem
{
    NSArray *items;
}

@property (nonatomic, weak) BNRContainer *container;

- (NSString *)description;

@end
