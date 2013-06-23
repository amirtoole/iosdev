//
//  ViewController.m
//  A1BronzeChallenge
//
//  Created by amir on 2013-06-16.
//  Copyright (c) 2013 amir. All rights reserved.
//

#import "A1BronzeViewController.h"
#import "BNRMapPoint.h"

@implementation A1BronzeViewController

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

- (void)viewDidLoad
{
    [worldView setShowsUserLocation:YES];
}

- (void)findLocation
{
    [locationManager startUpdatingLocation];
    [activityIndicator startAnimating];
//    [locationTitleField setHidden:YES];
}


- (void)foundLocation:(CLLocation *)loc
{
    CLLocationCoordinate2D coord = [loc coordinate];
    
    // Create an instance of MapPoint with the current data
    BNRMapPoint *mp = [[BNRMapPoint alloc] initWithCoordinate:coord
                                                        title:[locationTitleField text]];

    // Add it to the map view
    [worldView addAnnotation:mp];
    
    // Zoom the region to this location
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(coord, 250, 250);
    [worldView setRegion:region animated:YES];
    
//    [locationTitleField setText:@""];
//    [activityIndicator stopAnimating];
//    [locationTitleField setHidden:NO];
    [locationManager stopUpdatingLocation];
}

- (void)locationManager:(CLLocationManager *)manager
    didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation
{
    // How many seconds ago was this new location created?
    NSTimeInterval t = [[newLocation timestamp] timeIntervalSinceNow];
    
    // CLLocationManagers will return the last found location of the
    // device first, you don't want that data in this case.
    // If this location was made more than 3 minutes ago, ignore it.
    if (t < -180) {
        // This is cached data, you don't want it, keep looking
        return;
    }
    
    [self foundLocation:newLocation];
}

- (void)locationManager:(CLLocationManager *)manager
       didFailWithError:(NSError *)error
{
    NSLog(@"Could not find location: %@", error);
}


- (void)mapView:(MKMapView *)mv didUpdateUserLocation:(MKUserLocation *)u
{
    CLLocationCoordinate2D loc = [u coordinate];
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(loc, 250, 250);
    [worldView setRegion:region animated:YES];
}


//we have to manually dealloc this obj
- (void)dealloc
{
    //tell location manager to stop sending us messages
    [locationManager setDelegate:nil];
}

@end
