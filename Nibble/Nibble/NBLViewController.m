//
//  NBLViewController.m
//  Nibble
//
//  Created by George Chearswat on 11/23/13.
//  Copyright (c) 2013 NibbleNibble. All rights reserved.
//

#import "NBLViewController.h"

@interface NBLViewController ()

@end

@implementation NBLViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    _menuOpen = NO;
	self.title = @"NIBBL";
    UIImage *menuIcon = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"menu-icon" ofType:@"png"]];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:menuIcon style:UIBarButtonItemStylePlain target:self action:@selector(showMenu)];
    [self.navigationItem.rightBarButtonItem setTintColor:[UIColor whiteColor]];
    
    /*
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:@selector(showSearch)];
    [self.navigationItem.rightBarButtonItem setTintColor:[UIColor whiteColor]];
    */
     
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonFindPushed:(id)sender {
    
//    NBLServerConnection *connection = [[NBLServerConnection alloc] init];
//    [connection sendQuery:[NSString stringWithFormat:@"zip=%@", _textQuery.text] withTarget:self selector:@selector(queryDidLoad:)];
}

- (void)showMenu {
    
    /*
    NBLRestaurantViewController *restaurantView = [[UIStoryboard storyboardWithName:@"MainStoryboard" bundle:NULL] instantiateViewControllerWithIdentifier:@"NBLRestaurantView"];
    restaurantView.restaurant = [[NBLRestaurant alloc] init];
    restaurantView.restaurant.name = @"General Lee's";
    [self.navigationController pushViewController:restaurantView animated:YES];
    */
    
    [_textQuery resignFirstResponder];
    
    if ( _menuOpen ) {
        [self hideMenu];
        return;
    }
    _menuOpen = YES;
    
    if ( _viewMenu == nil ) {
        _viewMenu = [[UIView alloc] init];
        UIImage *image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"nibbl-menu" ofType:@"png"]];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        imageView.frame = CGRectMake(0, 20, 250, 500);
        [_viewMenu addSubview:imageView];
    }
    _viewMenu.frame = CGRectMake(-270, 60, 270, 500);
    [_viewMenu setBackgroundColor:[UIColor blackColor]];
    [self.view addSubview:_viewMenu];
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.2];
    [UIView setAnimationDelay:0.0];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
    
    _viewMenu.frame = CGRectMake(0, 60, 270, 500);
    
    [UIView commitAnimations];
}

- (void)hideMenu {
    
    /*
     NBLRestaurantViewController *restaurantView = [[UIStoryboard storyboardWithName:@"MainStoryboard" bundle:NULL] instantiateViewControllerWithIdentifier:@"NBLRestaurantView"];
     restaurantView.restaurant = [[NBLRestaurant alloc] init];
     restaurantView.restaurant.name = @"General Lee's";
     [self.navigationController pushViewController:restaurantView animated:YES];
     */
    
    if ( _viewMenu == nil ) return;
    _menuOpen = NO;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.2];
    [UIView setAnimationDelay:0.0];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
    
    _viewMenu.frame = CGRectMake(-270, 60, 270, 500);
    
    [UIView commitAnimations];
}

- (void)showSearch {
    
    
}

- (void)queryDidLoad:(NBLServerConnection *)connection {
    
    NSLog(@"query did load");
}

@end
