//
//  NSString+HSCEncryptString.m
//  CApp
//
//  Created by 马健Jane on 15/6/26.
//  Copyright (c) 2015年 HSC. All rights reserved.
//

#import "NSString+HSCEncryptString.h"
#import <CommonCrypto/CommonDigest.h>
@implementation NSString (HSCEncryptString)
- (NSString *)MD5{
    const char *cStr = [self UTF8String];
    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    CC_MD5( cStr, (CC_LONG)strlen(cStr), digest );
    
    NSMutableString *output = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    
    for(int i = 0; i < CC_MD5_DIGEST_LENGTH; i++)
        [output appendFormat:@"%02x", digest[i]];
    
    return  [NSString stringWithString: output];
}
@end
