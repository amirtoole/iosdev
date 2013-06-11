//
//  WhereamiViewController.m
//  Whereami
//
//  Created by iadmin on 13-06-10.
//  Copyright (c) 2013 amir. All rights reserved.
//

#import "WhereamiViewController.h"

@interface WhereamiViewController ()

@end

@implementation WhereamiViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        //create location manager object
        locationManager = [[CLLocationManager alloc] init];
        
        //setting our delegate
        [locationManager setDelegate: self];
        
        //we want it to be as accurate as possible regardless of how much time/power it takes
        [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
        
        //tell our manager to start looking for its location immediately
        [locationManager startUpdatingHeading];
    }
    
    return self;
}

//this will print the location to console
- (void)locationManager:(CLLocationManager *)manager
    didUpdateToLocation:(NSArray *)newLocation
           fromLocation:(CLLocation *)oldLocation
{
    NSLog(@"%@", newLocation);
}

//error msgs are printed to console
- (void)locationManager:(CLLocationManager *)manager
    didFailWithError:(NSError *)error
{
    NSLog(@"Could not find location: %@", error);
}

//we have to manually dealloc this obj
- (void)dealloc
{
    //tell location manager to stop sending us messages
    [locationManager setDelegate:nil];
}

@end
