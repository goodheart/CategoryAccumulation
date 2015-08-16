//
//  UIDevice+HSCDeviceType.m
//  CApp
//
//  Created by 马健Jane on 15/7/1.
//  Copyright (c) 2015年 HSC. All rights reserved.
//

#import "UIDevice+HSCDeviceType.h"
#import <sys/sysctl.h>

static HSCDeviceType _deviceType = HSCDeviceTypeUnKnow;
static HSCOSType _osType = HSCOSTypeUnKnow;

@implementation UIDevice (HSCDeviceType)

+ (void)devicePlatform{
    size_t size;
    int nR = sysctlbyname("hw.machine", NULL, &size, NULL, 0);
    char * machine = (char *)malloc(size);
    nR = sysctlbyname("hw.machine", machine, &size, NULL, 0);
    NSString * platform = [NSString stringWithCString:machine
                                             encoding:NSUTF8StringEncoding];
    free(machine);
    
    if ([platform isEqualToString:@"iPhone1,1"]) {
        _deviceType = HSCDeviceTypeiPhone1;
    } else if ([platform isEqualToString:@"1,2"]) {
        _deviceType = HSCDeviceTypeiPhone3G;
    } else if ([platform isEqualToString:@"iPhone2,1"]) {
        _deviceType = HSCDeviceTypeiPhone3GS;
    } else if ([@[@"iPhone3,1",@"iPhone3,2",@"iPhone3,3"] containsObject:platform]) {
        _deviceType = HSCDeviceTypeiPhone4;
    } else if ([platform isEqualToString:@"iPhone4,1"]) {
        _deviceType = HSCDeviceTypeiPhone4s;
    } else if ([@[@"iPhone5,1",@"iPhone5,2"] containsObject:platform]) {
        _deviceType = HSCDeviceTypeiPhone5;
    } else if ([@[@"iPhone5,3",@"iPhone5,4"] containsObject:platform]) {
        _deviceType = HSCDeviceTypeiPhone5c;
    } else if ([@[@"iPhone6,1",@"iPhone6,2"] containsObject:platform]) {
        _deviceType = HSCDeviceTypeiPhone5s;
    } else if ([platform isEqualToString:@"iPhone7,2"]) {
        _deviceType = HSCDeviceTypeiPhone6;
    } else if ([platform isEqualToString:@"iPhone7,1"]) {
        _deviceType = HSCDeviceTypeiPhone6P;
    } else if ([platform isEqualToString:@"iPod4,1"]) {
        _deviceType = HSCDeviceTypeiPod4;
    } else if ([platform isEqualToString:@"iPod5,1"]) {
        _deviceType = HSCDeviceTypeiPod5;
    } else if ([platform isEqualToString:@"iPod3,1"]) {
        _deviceType = HSCDeviceTypeiPod3;
    } else if ([platform isEqualToString:@"iPod2,1"]) {
        _deviceType = HSCDeviceTypeiPod2;
    } else if ([platform isEqualToString:@"iPod1,1"]) {
        _deviceType = HSCDeviceTypeiPod1;
    } else if ([@[@"iPad2,1",@"iPad2,2",@"iPad2,3",@"iPad2,4"] containsObject:platform]) {
        _deviceType = HSCDeviceTypeiPad2;
    } else if ([platform isEqualToString:@"iPad1,1"]) {
        _deviceType = HSCDeviceTypeiPad1;
    } else if ([@[@"iPad2,5",@"iPad2,6",@"iPad2,7"] containsObject:platform]) {
        _deviceType = HSCDeviceTypeiPadMini;
    } else if ([@[@"iPad3,1",@"iPad3,2",@"iPad3,3",@"iPad3,4",@"iPad3,5",@"iPad3,6"]
                containsObject:platform]) {
        _deviceType = HSCDeviceTypeiPad3;
    } else if ([@[@"i386",@"x86_64"] containsObject:platform]) {
        _deviceType = HSCDeviceTypeSimulator;
    }
}

+ (BOOL)isPhone{
    return UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone;
}

+ (BOOL)isIpad{
    return UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad;
}

+ (BOOL)isIpod{
    return [[[UIDevice currentDevice] model] isEqualToString:@"iPod touch"];
}

+ (HSCDeviceType)deviceType{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [self devicePlatform];
    });
    return _deviceType;
}

+ (void)OSPlatform{
    NSString * os = [self OSFullType];
    NSArray * array = [os componentsSeparatedByString:@"."];
    if (array.count > 0) {
        NSString * osMainType = [array objectAtIndex:0];
        if ([osMainType isEqualToString:@"4"]) {
            _osType = HSCOSTypeiOS4;
        } else if([osMainType isEqualToString:@"5"]) {
            _osType = HSCOSTypeiOS5;
        } else if ([osMainType isEqualToString:@"6"]) {
            _osType = HSCOSTypeiOS6;
        } else if ([osMainType isEqualToString:@"7"]) {
            _osType = HSCOSTypeiOS7;
        } else if ([osMainType isEqualToString:@"8"]) {
            _osType = HSCOSTypeiOS8;
        } else if ([osMainType isEqualToString:@"9"]) {
            _osType = HSCOSTypeiOS9;
        }
    }
}

+ (HSCOSType)OSMainType{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [self OSPlatform];
    });
    return _osType;
}

+ (NSString *)OSFullType{
    UIDevice * device = [UIDevice currentDevice];
    return [device systemVersion];
}













@end
