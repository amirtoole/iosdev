//
//  BNRMapPoint.m
//  Whereami
//
//  Created by iadmin on 13-06-24.
//
//

#import "BNRMapPoint.h"

@implementation BNRMapPoint

//this creates our vars getters and setters
@synthesize coordinate, title;

- (id)initWithCoordinate:(CLLocationCoordinate2D)c title:(NSString *)t
{
    self = [super init];
    if (self) {
        coordinate = c;
        [self setTitle:t];
    }
    return self;
}

- (id)init
{
    return [self initWithCoordinate:CLLocationCoordinate2DMake(43.07, -89.32) title:@"Hometown"];
}

@end
