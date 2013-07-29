//
//  HomepwnerItemCell.h
//  Homepwner
//
//  Created by iadmin on 13-07-29.
//
//

#import <UIKit/UIKit.h>

@interface HomepwnerItemCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *thumbnailView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *serialNumberLabel;
@property (weak, nonatomic) IBOutlet UILabel *valueLabel;

@end
