//
//  Base64Manager.h
//  SecurityDemo
//
//  Created by 岳琛 on 2019/4/12.
//  Copyright © 2019 KMF-Engineering. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Base64Manager : NSObject

// Decoder
- (NSData *)decodeBase64:(NSString *)string;

// convert NSData to Base64  Encoder
- (NSString *)base64:(NSData *)data;

@end

NS_ASSUME_NONNULL_END
