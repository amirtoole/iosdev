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

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    //Call the superclass's designated init
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        //get the tab bar item
        UITabBarItem *tbi = [self tabBarItem];
        
        //give it a label
        [tbi setTitle:@"Hypnosis"];
        
        //adding image to tab
        UIImage *i = [UIImage imageNamed:@"Hypno.png"];
        [tbi setImage:i];
    }
    return self;
}

- (void)loadView
{
    //Create a view
    CGRect frame = [[UIScreen mainScreen] bounds];
    HypnosisView *v  = [[HypnosisView alloc] initWithFrame:frame];
    
    //set it as *the* view of this view controller
    [self setView:v];
}

@end
