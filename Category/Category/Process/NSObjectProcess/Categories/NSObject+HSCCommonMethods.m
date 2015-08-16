//
//  NSObject+HSCCommonMethods.m
//  CApp
//
//  Created by 马健Jane on 15/7/11.
//  Copyright (c) 2015年 HSC. All rights reserved.
//

#import "NSObject+HSCCommonMethods.h"

@implementation NSObject (HSCCommonMethods)


- (BOOL)hsc_isEmptyObject{
    if ([self isEqual:[NSNull null]]) {
        return YES;
    }
    
    if ([self isKindOfClass:[NSString class]]) {
        if (0 == [(NSString *)self length]) {
            return 0;
        }
    }
    
    if ([self isKindOfClass:[NSArray class]]) {
        if (0 == [(NSArray *)self count]) {
            return YES;
        }
    }
    
    if ([self isKindOfClass:[NSDictionary class]]) {
        if (0 == [(NSDictionary *)self count]) {
            return YES;
        }
    }
    
    return NO;
}

@end
