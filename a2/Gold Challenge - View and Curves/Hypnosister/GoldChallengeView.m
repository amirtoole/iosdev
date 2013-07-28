//
//  GoldChallengeView.m
//  Hypnosister
//
//  Created by amir on 2013-07-28.
//
//

#import "GoldChallengeView.h"

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

//    [self.image drawAtPoint:CGPointMake(10, 10)];
    [self.image drawInRect:rect];
}

@end
