//
//  BNRMapPoint.h
//  Whereami
//
//  Created by iadmin on 13-06-24.
//
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface BNRMapPoint : NSObject <MKAnnotation>
{
}
//A new designed initializer for instances of BNRMapPoint
- (id)initWithCoordinate:(CLLocationCoordinate2D)c title:(NSString *)t;

//This is required property from MKAnnotation
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

//This is an optional property from MKAnnotation
@property (nonatomic, copy) NSString *title;

@end
