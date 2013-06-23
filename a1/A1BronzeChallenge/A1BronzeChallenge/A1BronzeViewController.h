//
//  ViewController.h
//  A1BronzeChallenge
//
//  Created by amir on 2013-06-16.
//  Copyright (c) 2013 amir. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>


@interface A1BronzeViewController : UIViewController<CLLocationManagerDelegate, MKMapViewDelegate>
{
    CLLocationManager *locationManager;
    IBOutlet MKMapView *worldView;
    IBOutlet UIActivityIndicatorView *activityIndicator;
    IBOutlet UITextField *locationTitleField;

}

- (void)findLocation;
- (void)foundLocation:(CLLocation *)loc;


@end