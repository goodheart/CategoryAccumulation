//
//  NSString+HSCEmptyString.m
//  CApp
//
//  Created by 马健Jane on 15/6/26.
//  Copyright (c) 2015年 HSC. All rights reserved.
//

#import "NSString+HSCEmptyString.h"

@implementation NSString (HSCEmptyString)
+ (BOOL)isEmptyString:(NSString *)string{
    if (!string || string.length == 0) {return YES;}
    NSMutableString *temp = [[NSMutableString alloc] initWithString:[string stringByReplacingOccurrencesOfString:@" " withString:@""]];
    [temp stringByReplacingOccurrencesOfString:@"\r" withString:@""];
    [temp stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    return [temp isEqualToString:@""];
}
@end
