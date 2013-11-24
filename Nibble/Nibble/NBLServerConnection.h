//
//  NBLServerConnection.h
//  Nibble
//
//  Created by Don Perkins on 11/23/13.
//  Copyright (c) 2013 NibbleNibble. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NBLAppSettings.h"

@interface NBLServerConnection : NSObject <NSURLConnectionDataDelegate, NSURLConnectionDelegate, NSURLConnectionDownloadDelegate>

@property (strong, nonatomic) NSMutableData *dataDownload;
@property (strong, nonatomic) NSHTTPURLResponse *httpResponse;
@property (strong, nonatomic) id target;
@property SEL selector;

- (void)sendQuery:(NSString *)query withTarget:(id)target selector:(SEL)selector;

@end
