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
    //rounded border
    [layer setCornerRadius:50];
    
    //add border size
    [layer setBorderWidth:1.0];
    //add border colour
    [layer setBorderColor:[[UIColor blackColor] CGColor]];
    
    CALayer *imageLayer = [CALayer layer];
    imageLayer.contents = self.image;
    [layer addSublayer:imageLayer];

    
    //shadow
    [layer setShadowColor:[[UIColor blackColor] CGColor]];
    [layer setShadowOffset:CGSizeMake(0, 6)];
    [layer setShadowOpacity:1.0];
    [layer setShadowRadius:10.0];
    
    //gradient
    CGFloat scale = self.image.scale;
    UIGraphicsBeginImageContext(CGSizeMake(self.image.size.width * scale, self.image.size.height * scale));
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextTranslateCTM(context, 0, self.image.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    
    CGContextSetBlendMode(context, kCGBlendModeMultiply);
    CGRect rect2 = CGRectMake(0, 0, self.image.size.width * scale, self.image.size.height * scale);
    CGContextDrawImage(context, rect2, self.image.CGImage);

    UIColor *colorOne = [UIColor whiteColor];
    UIColor *colorTwo = [UIColor blueColor];
    
    NSArray *colors = [NSArray arrayWithObjects:(id)colorOne.CGColor, (id)colorTwo.CGColor, nil];
    CGColorSpaceRef space = CGColorSpaceCreateDeviceRGB();
    CGGradientRef gradient = CGGradientCreateWithColors(space, (__bridge CFArrayRef)colors, NULL);
    
    CGContextClipToMask(context, rect2, self.image.CGImage);
    CGContextDrawLinearGradient(context, gradient, CGPointMake(0,0), CGPointMake(0,self.image.size.height * scale), 0);
    UIImage *gradientImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    [gradientImage drawInRect:rect];

}



@end
