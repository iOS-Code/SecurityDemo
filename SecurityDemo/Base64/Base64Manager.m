//
//  Base64Manager.m
//  SecurityDemo
//
//  Created by 岳琛 on 2019/4/12.
//  Copyright © 2019 KMF-Engineering. All rights reserved.
//

#import "Base64Manager.h"
#import <Foundation/NSObject.h>

/** Base64 */
/**
 1)将所有字符转化为ASCII码；
 2)将ASCII码转化为8位二进制；
 3)将二进制3个归成一组(不足3个在后边补0)共24位，再拆分成4组，每组6位；
 4)统一在6位二进制前补两个0凑足8位；
 5)将补0后的二进制转为十进制；
 6)从Base64编码表获取十进制对应的Base64编码；
 */

@implementation Base64Manager

// Decoder
- (NSData *)decodeBase64:(NSString *)string;
{
    return [[NSData alloc] initWithBase64EncodedString:string options:0];
}

// convert NSData to Base64  Encoder
- (NSString *)base64:(NSData *)data;
{
    return [data base64EncodedStringWithOptions:0];
}

@end
