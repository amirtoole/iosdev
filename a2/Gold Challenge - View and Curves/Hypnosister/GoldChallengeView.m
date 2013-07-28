//
//  GoldChallengeView.m
//  Hypnosister
//
//  Created by amir on 2013-07-28.
//
//

#import "GoldChallengeView.h"
#import <CoreGraphics/CoreGraphics.h>
#import <QuartzCore/QuartzCore.h>

@implementation GoldChallengeView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        NSString *imagePath = [[NSBundle mainBundle] pathForResource:@"Icon" ofType:@"png"];
        
        UIImage *myImageObj = [[UIImage alloc] initWithContentsOfFile:imagePath];
        
        self.image = myImageObj;
        


    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CALayer *layer = [self layer];
    [layer setMasksToBounds:YES];
    [layer setCornerRadius:50];
    
    //add border size
    [layer setBorderWidth:1.0];
    //add border colour
    [layer setBorderColor:[[UIColor blackColor] CGColor]];

    //gradient
//    CAGradientLayer * gradient = [CAGradientLayer layer];
//    [gradient setFrame:[self bounds]];
//    [gradient setColors:[NSArray arrayWithObjects:(id)[[UIColor blueColor] CGColor], (id)[[UIColor whiteColor] CGColor], nil]];

//    [layer insertSublayer:gradient atIndex:1];
    
    //shadow
    [layer setShadowColor:[[UIColor blackColor] CGColor]];
    [layer setShadowOffset:CGSizeMake(0, 6)];
    [layer setShadowOpacity:1.0];
    [layer setShadowRadius:10.0];

    [self.image drawInRect:rect];
}



@end
