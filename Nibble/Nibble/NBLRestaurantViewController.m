//
//  NBLRestaurantViewController.m
//  Nibble
//
//  Created by Don Perkins on 11/23/13.
//  Copyright (c) 2013 NibbleNibble. All rights reserved.
//

#import "NBLRestaurantViewController.h"

@interface NBLRestaurantViewController ()

@end

@implementation NBLRestaurantViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.navigationItem.leftBarButtonItem setTintColor:[UIColor whiteColor]];
    self.title = _restaurant.name.uppercaseString;
    _webViewMain.delegate = self;
	NSURLRequest *request = [NSURLRequest requestWithURL:[[NSBundle mainBundle] URLForResource:@"Restaurant" withExtension:@"html"]];
    [_webViewMain loadRequest:request];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
    
    NSURL *url = request.URL;
    if ( [url.scheme isEqualToString:@"app"] ) {
        if ( [url.host isEqualToString:@"onload"] ) {
            [_webViewMain stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"setTitle('%@');", [_restaurant.name stringByReplacingOccurrencesOfString:@"'" withString:@"\\\'"]]];
        }
        return NO;
    }
    return YES;
}

@end
