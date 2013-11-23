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
	self.title = @"NIBBL";
    UIImage *menuIcon = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"menu-icon" ofType:@"png"]];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:menuIcon style:UIBarButtonItemStylePlain target:self action:@selector(showMenu)];
    [self.navigationItem.leftBarButtonItem setTintColor:[UIColor whiteColor]];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:@selector(showSearch)];
    [self.navigationItem.rightBarButtonItem setTintColor:[UIColor whiteColor]];
    
    [_textQuery becomeFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonFindPushed:(id)sender {
}

- (void)showMenu {
    
    
}

- (void)showSearch {
    
    
}

@end
