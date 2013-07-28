//
//  HypnosisViewController.m
//  HypnoTime
//
//  Created by joeconway on 8/30/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "HypnosisViewController.h"
#import "HypnosisView.h"

@implementation HypnosisViewController

- (id)initWithNibName:(NSString *)nibName bundle:(NSBundle *)bundle
{
    // Call the superclass's designated initializer
    self = [super initWithNibName:nil
                           bundle:nil];
    if (self) {
        // Get the tab bar item
        UITabBarItem *tbi = [self tabBarItem];
        // Give it a label
        [tbi setTitle:@"Hypnosis"];

        // Create a UIImage from a file
        // This will use Hypno@2x.png on retina display devices
        UIImage *i = [UIImage imageNamed:@"Hypno.png"];
        // Put that image on the tab bar item
        [tbi setImage:i];
    }
    return self;
}

- (void)viewDidLoad
{
    // Always call the super implementation of viewDidLoad
    [super viewDidLoad];
    NSLog(@"HypnosisViewController loaded its view.");
}

- (void)loadView
{
    // Create a view
    CGRect frame = [[UIScreen mainScreen] bounds];
    HypnosisView *v = [[HypnosisView alloc] initWithFrame:frame];
    
    // Set it as *the* view of this view controller
    [self setView:v];

    //Creating a subview to attach our UISegmentedControl to
    UIScrollView *scroll = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 320, 435)];
    scroll.contentSize = CGSizeMake(320, 700);
    
    NSArray *itemArray = [NSArray arrayWithObjects: @"Red", @"Green", @"Blue", nil];
    UISegmentedControl *segmentedControl = [[UISegmentedControl alloc] initWithItems:itemArray];
    segmentedControl.frame = CGRectMake(35, 10, 250, 50);
    segmentedControl.segmentedControlStyle = UISegmentedControlStylePlain;
    
    [segmentedControl addTarget:self action:@selector(valueChanged:) forControlEvents: UIControlEventValueChanged];
    
    [scroll addSubview:segmentedControl];
    [self.view addSubview:scroll];
}

- (void)valueChanged:(id)sender
{
    HypnosisView *view = (HypnosisView *)self.view;
    switch (((UISegmentedControl *)sender).selectedSegmentIndex) {
        case 0:
            [view setBackgroundColor:[UIColor redColor]];
            break;
        case 1:
            [view setBackgroundColor:[UIColor greenColor]];
            break;
        case 2:
            [view setBackgroundColor:[UIColor blueColor]];
            break;
        default:
            break;
    }
}

@end
