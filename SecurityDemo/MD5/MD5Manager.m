//
//  MD5Manager.m
//  SecurityDemo
//
//  Created by 岳琛 on 2019/4/12.
//  Copyright © 2019 KMF-Engineering. All rights reserved.
//

#import "MD5Manager.h"
#include <CommonCrypto/CommonHMAC.h>

@implementation MD5Manager

- (NSString *)MD5:(NSString *)string
{
    const char *cStr = [string UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    
    CC_MD5(cStr, (CC_LONG)strlen(cStr), result);
    
    return [NSString stringWithFormat:@"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
            result[0], result[1], result[2], result[3], result[4], result[5],
            result[6], result[7], result[8], result[9], result[10], result[11],
            result[12], result[13], result[14], result[15]];
}

@end
