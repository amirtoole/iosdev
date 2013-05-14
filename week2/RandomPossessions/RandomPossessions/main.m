//
//  main.m
//  RandomPossessions
//
//  Created by iadmin on 13-05-13.
//  Copyright (c) 2013 amir. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
//        NSLog(@"Hello, World!");
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        [items addObject:@"one"];
        [items addObject:@"two"];
        [items addObject:@"three"];
        
        [items insertObject:@"zero" atIndex:0];
        
        for (int i = 0; i < [items count]; i++) {
            NSLog(@"%@", [items objectAtIndex:i]);
        }
        
        //destroy w/ garbage collection
        items = nil;
        
    }
    return 0;
}

