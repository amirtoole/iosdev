//
//  HypnosisterAppDelegate.m
//  Hypnosister
//
//  Created by iadmin on 13-06-24.
//  Copyright (c) 2013 amir. All rights reserved.
//

#import "HypnosisterAppDelegate.h"
#import "HypnosisView.h"

@implementation HypnosisterAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    //making a rectangle: x, y, width, height
//    CGRect viewFrame = CGRectMake(160, 240, 100, 150);
    
//    HypnosisView *view = [[HypnosisView alloc] initWithFrame:viewFrame];
//    [view setBackgroundColor:[UIColor redColor]];
    
    CGRect screenRect = [[self window] bounds];
    
    //create the UIScrollView to have the size of the window, matching its size
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:screenRect];
    [[self window] addSubview:scrollView];
    
    //Crearte the hypnosisview with a frame that is twice the size of the screen
    CGRect bigRect = screenRect;
    bigRect.size.width *= 2.0;
    bigRect.size.height *= 2.0;
    HypnosisView *view = [[HypnosisView alloc] initWithFrame:bigRect];
    
    
    //add the hypnosisview as a subview of the scrollview instead of the window
    [scrollView addSubview:view];
    
    //tell the srollview how big its virtual world is
    [scrollView setContentSize:bigRect.size];
    
//    HypnosisView *view = [[HypnosisView alloc] initWithFrame:[[self window] bounds]];
    
    //draw the view
//    [[self window] addSubview:view];
    
    BOOL success = [view becomeFirstResponder];
    if (success) {
        NSLog(@"HypnosisView became the first responder");
    }
    else {
        NSLog(@"Could not become first responder");
    }
    
//    CGRect anotherFrame = CGRectMake(20, 30, 50, 50);
//    HypnosisView *anotherView = [[HypnosisView alloc] initWithFrame:anotherFrame];
//    [anotherView setBackgroundColor:[UIColor blueColor]];
    
//    [[self window] addSubview:anotherView];
    //^ instead of applying to self.window, we're adding a subView to view; blue square will be in red rectangle
//    [view addSubview:anotherView];
    
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
