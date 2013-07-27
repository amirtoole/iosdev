//
//  DetailViewController.h
//  Homepwner
//
//  Created by iadmin on 13-07-22.
//  Copyright (c) 2013 amir. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BNRItem;

@interface DetailViewController : UIViewController<UINavigationControllerDelegate, UIImagePickerControllerDelegate>
{
    __weak IBOutlet UITextField *nameField;
    __weak IBOutlet UITextField *serialField;
    __weak IBOutlet UITextField *valueField;
    __weak IBOutlet UILabel *dateLabel;
    __weak IBOutlet UIImageView *imageView;
}

@property (nonatomic, strong) BNRItem *item;
- (IBAction)takePicture:(id)sender;

@end
