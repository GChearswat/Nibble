//
//  NBLRestaurantViewController.h
//  Nibble
//
//  Created by Don Perkins on 11/23/13.
//  Copyright (c) 2013 NibbleNibble. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NBLRestaurant.h"

@interface NBLRestaurantViewController : UIViewController <UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *webViewMain;
@property (strong, nonatomic) NBLRestaurant *restaurant;

@end
