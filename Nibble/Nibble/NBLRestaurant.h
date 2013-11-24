//
//  NBLRestaurant.h
//  Nibble
//
//  Created by George Chearswat on 11/23/13.
//  Copyright (c) 2013 NibbleNibble. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum
{
    LowTrafficLevel,
    MediumTrafficLevel,
    HighTrafficLevel
} RestaurantTrafficLevel;

@interface NBLRestaurant : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) UIImage *featuredPhoto;
#warning may not need all these restraurant address/GPS values
@property (strong, nonatomic) NSString *address;
@property (strong, nonatomic) NSString *city;
@property (strong, nonatomic) NSString *state;
@property (strong, nonatomic) NSString *category;
@property int zip;
@property float latitude;
@property float logitude;
@property int facebookCheckinCount;
@property int fourSquareCheckinCount;
@property int yelpCheckinCount;
@property RestaurantTrafficLevel currentTrafficLevel;

- (void) initRestaurant: (NSDictionary*) info;
@end
