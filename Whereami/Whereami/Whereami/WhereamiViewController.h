//
//  WhereamiViewController.h
//  Whereami
//
//  Created by iadmin on 13-06-10.
//  Copyright (c) 2013 amir. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface WhereamiViewController : UIViewController <CLLocationManagerDelegate>
{
    CLLocationManager *locationManager;
    
}
@end
