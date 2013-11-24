//
//  NBLServerConnection.m
//  Nibble
//
//  Created by Don Perkins on 11/23/13.
//  Copyright (c) 2013 NibbleNibble. All rights reserved.
//

#import "NBLServerConnection.h"

@implementation NBLServerConnection

- (void)sendQuery:(NSString *)query withTarget:(id)target selector:(SEL)selector {
    
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@%@?%@", SERVER_HOSTNAME, SERVER_QUERY_PATH, query]];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    _dataDownload = [NSMutableData data];
    _target = target;
    _selector = selector;
    [NSURLConnection connectionWithRequest:request delegate:self];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    
    [_dataDownload appendData:data];
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    
    _httpResponse = (NSHTTPURLResponse *)response;
}

- (void)connectionDidFinishDownloading:(NSURLConnection *)connection destinationURL:(NSURL *)destinationURL {
    
    if ( _target != nil && _selector != nil ) {
        [_target performSelector:_selector withObject:self];
    }
}

@end
