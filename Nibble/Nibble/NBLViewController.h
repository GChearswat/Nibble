//
//  NBLViewController.h
//  Nibble
//
//  Created by George Chearswat on 11/23/13.
//  Copyright (c) 2013 NibbleNibble. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NBLServerConnection.h"

@interface NBLViewController : UIViewController

@property (strong, nonatomic) UIView *viewMenu;

@property (weak, nonatomic) IBOutlet UITextField *textQuery;

- (IBAction)buttonFindPushed:(id)sender;

- (void)showMenu;
- (void)showSearch;
- (void)queryDidLoad:(NBLServerConnection *)connection;

@end
