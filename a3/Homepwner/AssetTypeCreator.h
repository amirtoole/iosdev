//
//  AssetTypeCreator.h
//  A3-AmirToole
//
//  Created by amir on 2013-08-16.
//
//

#import <UIKit/UIKit.h>

@interface AssetTypeCreator : UIViewController<UINavigationControllerDelegate, UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *name;
@property (nonatomic, copy) void (^dismissBlock)(void);


@end
