//
//  NBLRestaurant.m
//  Nibble
//
//  Created by George Chearswat on 11/23/13.
//  Copyright (c) 2013 NibbleNibble. All rights reserved.
//

#import "NBLRestaurant.h"

@implementation NBLRestaurant

- (void) initRestaurant: (NSDictionary*) info
{
    _name = info[@"Name"];
    switch ((int)info[@"CurrentTrafficLevel"]) {
        case LowTrafficLevel:
            _currentTrafficLevel = LowTrafficLevel;
            break;
        case MediumTrafficLevel:
            _currentTrafficLevel = MediumTrafficLevel;
            break;
        case HighTrafficLevel:
            _currentTrafficLevel = HighTrafficLevel;
            break;
        default:
            break;
    }
    _latitude = [info[@"Latitude"] floatValue];
    _logitude = [info[@"Longitude"] floatValue];
    
}

@end
