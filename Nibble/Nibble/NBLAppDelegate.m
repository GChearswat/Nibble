//
//  NBLAppDelegate.m
//  Nibble
//
//  Created by George Chearswat on 11/23/13.
//  Copyright (c) 2013 NibbleNibble. All rights reserved.
//  

// Change2

#import "NBLAppDelegate.h"

@implementation NBLAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [[UINavigationBar appearance] setBarTintColor:[UIColor blackColor]];
    NSDictionary *attributes = [NSDictionary dictionaryWithObjectsAndKeys:[UIFont fontWithName:@"Muchacho" size:26], NSFontAttributeName, [UIColor whiteColor], NSForegroundColorAttributeName, nil];
    [[UINavigationBar appearance] setTitleTextAttributes:attributes];
    NSDictionary *attributes2 = [NSDictionary dictionaryWithObjectsAndKeys:
                                [UIColor whiteColor],
                                UITextAttributeTextColor,
                                [UIColor clearColor],
                                UITextAttributeTextShadowColor,
                                 [UIFont fontWithName:@"Muchacho" size:10],
                                 NSFontAttributeName, nil];

    [[UIBarButtonItem appearance] setTitleTextAttributes: attributes
                                                forState: UIControlStateNormal];
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
