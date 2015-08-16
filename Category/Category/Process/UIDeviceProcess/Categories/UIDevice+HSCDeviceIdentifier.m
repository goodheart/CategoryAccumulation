//
//  UIDevice+HSCDeviceIdentifier.m
//  CApp
//
//  Created by 马健Jane on 15/7/10.
//  Copyright (c) 2015年 HSC. All rights reserved.
//

#import "UIDevice+HSCDeviceIdentifier.h"

@implementation UIDevice (HSCDeviceIdentifier)

- (NSString *)hsc_uuid{
    NSString * key = @"HSCUUID";
    NSString * uuid = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    if (uuid.length == 0) {
        [[NSUserDefaults standardUserDefaults] setObject:[self hsc_createUUID]
                                                  forKey:key];
        return [[NSUserDefaults standardUserDefaults] objectForKey:key];
    }
    
    return uuid;
}

- (NSString *)hsc_createUUID{
    CFUUIDRef uuid = CFUUIDCreate(NULL);
    CFStringRef string = CFUUIDCreateString(NULL, uuid);
    CFRelease(uuid);
    return (__bridge NSString *)string;
}



@end





















