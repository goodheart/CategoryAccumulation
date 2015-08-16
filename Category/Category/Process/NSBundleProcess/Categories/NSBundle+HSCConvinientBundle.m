//
//  NSBundle+HSCConvinientBundle.m
//  CApp
//
//  Created by 马健Jane on 15/6/30.
//  Copyright (c) 2015年 HSC. All rights reserved.
//

#import "NSBundle+HSCConvinientBundle.h"

@implementation NSBundle (HSCConvinientBundle)
- (NSString *)appName{
    return [self objectForInfoDictionaryKey:(id)kCFBundleNameKey];
}

- (NSString *)minimumOSVersion{
    return [self objectForInfoDictionaryKey:@"MinimumOSVersion"];
}
@end
