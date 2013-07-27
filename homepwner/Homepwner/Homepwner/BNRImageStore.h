//
//  BNRImageStore.h
//  Homepwner
//
//  Created by iadmin on 13-07-26.
//  Copyright (c) 2013 amir. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRImageStore : NSObject
{
    NSMutableDictionary *dictionary;
}

+ (BNRImageStore *)sharedStore;

- (void)setImage:(UIImage *)i forKey:(NSString *)s;
- (UIImage *)imageForKey:(NSString *)s;
- (void)deleteImageForKey:(NSString *)s;

@end
