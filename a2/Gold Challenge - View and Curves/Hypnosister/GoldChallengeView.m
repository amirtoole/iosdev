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
    // Get the Layer of any view
    CALayer * layer = [self layer];
    [layer setMasksToBounds:YES];
    [layer setCornerRadius:50];
    
    // You can even add a border
    [layer setBorderWidth:1.0];
    [layer setBorderColor:[[UIColor blueColor] CGColor]];
    
    [self.image drawInRect:rect];
}



@end
