//
//  HypnosisViewController.m
//  HypnoTime
//
//  Created by iadmin on 13-07-15.
//  Copyright (c) 2013 amir. All rights reserved.
//

#import "HypnosisViewController.h"
#import "HypnosisView.h"

@implementation HypnosisViewController

- (void)loadView
{
    //Create a view
    CGRect frame = [[UIScreen mainScreen] bounds];
    HypnosisView *v  = [[HypnosisView alloc] initWithFrame:frame];
    
    //set it as *the* view of this view controller
    [self setView:v];
}

@end
