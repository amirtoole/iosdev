//
//  WhereamiViewController.m
//  Whereami
//
//  Created by joeconway on 7/31/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "WhereamiViewController.h"
#import "BNRMapPoint.h"

@implementation WhereamiViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self) {
        // Create location manager object
        locationManager = [[CLLocationManager alloc] init];
        
        // There will be a warning from this line of code; ignore it for now
        [locationManager setDelegate:self];

        // And we want it to be as accurate as possible
        // regardless of how much time/power it takes
        [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
//        // Tell our manager to start looking for its location immediately
//        [locationManager startUpdatingLocation];
    }
    return self;
}

- (void)viewDidLoad
{
    [worldView setShowsUserLocation:YES];
}

- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    //this is a c var; therefore not a pointer
    CLLocationCoordinate2D loc = [userLocation coordinate];
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(loc, 250, 250);
    [worldView setRegion:region animated:YES];
}
- (void)locationManager:(CLLocationManager *)manager
    didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation
{
    NSLog(@"%@", newLocation);
    
    //how many seconds ago was this new location created?
    NSTimeInterval t = [[newLocation timestamp] timeIntervalSinceNow];
    
    //CLLocationManagers will return the last found location of the device first, you don't want
    //that data in this case.
    //If this location was made more than 3 minutes ago, ignore it
    if (t < -180) {
        //this is cached data, you don't want it, keep looking
        return;
    }
    
    [self foundLocation:newLocation];
}

- (void)locationManager:(CLLocationManager *)manager
       didFailWithError:(NSError *)error
{
    NSLog(@"Could not find location: %@", error);
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self findLocation];
    
    [textField resignFirstResponder];
    
    return YES;
}

- (void)findLocation
{
    [locationManager startUpdatingLocation];
    [activityIndicator startAnimating];
    [locationTitleField setHidden:YES];
}

- (void)foundLocation:(CLLocation *)loc
{
    CLLocationCoordinate2D coord = [loc coordinate];
    
    //create an instance of BNRMapPointwith the current data
    BNRMapPoint *mp = [[BNRMapPoint alloc] initWithCoordinate:coord title:[locationTitleField text]];
    
    //add it to the map view
    [worldView addAnnotation:mp];
    
    //zoom the region to this location
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(coord, 250, 250);
    [worldView setRegion:region animated:YES];
    
    //reset the UI
    [locationTitleField setText:@""];
    [activityIndicator stopAnimating];
    [locationTitleField setHidden:NO];
    [locationManager stopUpdatingLocation];
}

- (void)dealloc
{
    // Tell the location manager to stop sending us messages
    [locationManager setDelegate:nil];
}
@end
