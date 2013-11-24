//
//  NBLRestaurantTableCell.h
//  Nibble
//
//  Created by George Chearswat on 11/23/13.
//  Copyright (c) 2013 NibbleNibble. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NBLRestaurantTableCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UIImageView *clockImage;
@property (strong, nonatomic) IBOutlet UILabel *restaurantNameLabel;
@property (strong, nonatomic) IBOutlet UILabel *distanceLabel;

@end
