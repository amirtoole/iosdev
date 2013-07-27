//
//  HypnosisterAppDelegate.h
//  Hypnosister
//
//  Created by iadmin on 13-06-24.
//  Copyright (c) 2013 amir. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HypnosisView.h"

@interface HypnosisterAppDelegate : UIResponder <UIApplicationDelegate, UIScrollViewDelegate>
{
    HypnosisView *view;
}
@property (strong, nonatomic) UIWindow *window;

@end
