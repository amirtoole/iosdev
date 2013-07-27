//
//  BNRImageStore.m
//  Homepwner
//
//  Created by iadmin on 13-07-26.
//  Copyright (c) 2013 amir. All rights reserved.
//

#import "BNRImageStore.h"

@implementation BNRImageStore

+ (id)allocWithZone:(NSZone *)zone
{
    return [self sharedStore];
}

+ (BNRImageStore *)shardStore
{
    static BNRImageStore *sharedStore = nil;
    if (!sharedStore) {
        //create the singleton
        sharedStore = [[super allocWithZone:NULL] init];
    }
    return sharedStore;
}

@end
