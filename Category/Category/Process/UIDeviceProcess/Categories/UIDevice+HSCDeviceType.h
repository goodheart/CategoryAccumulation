//
//  UIDevice+HSCDeviceType.h
//  CApp
//
//  Created by 马健Jane on 15/7/1.
//  Copyright (c) 2015年 HSC. All rights reserved.
//

#import <UIKit/UIKit.h>

//当前的OS版本
typedef NS_ENUM(NSUInteger, HSCOSType) {
    HSCOSTypeUnKnow,
    HSCOSTypeiOS4,
    HSCOSTypeiOS5,
    HSCOSTypeiOS6,
    HSCOSTypeiOS7,
    HSCOSTypeiOS8,
    HSCOSTypeiOS9
};

//当前手机类型
typedef NS_ENUM(NSUInteger, HSCDeviceType) {
    HSCDeviceTypeUnKnow = 0,
    //Iphone
    HSCDeviceTypeiPhone1,
    HSCDeviceTypeiPhone3G, //iphone 3G
    HSCDeviceTypeiPhone3GS, //iphone 3GS
    HSCDeviceTypeiPhone4, //iphone 4
    HSCDeviceTypeiPhone4s, //iphone 4s
    HSCDeviceTypeiPhone5, //iphone 5
    HSCDeviceTypeiPhone5c, //iphone 5c
    HSCDeviceTypeiPhone5s, //iphone ss
    HSCDeviceTypeiPhone6, //iphone 6
    HSCDeviceTypeiPhone6P, //iphone 6P
    //iPad
    HSCDeviceTypeiPad1,
    HSCDeviceTypeiPad2, //iPad2
    HSCDeviceTypeiPad3, //iPad3
    HSCDeviceTypeiPadMini, //iPadMini
    //iPod
    HSCDeviceTypeiPod1,
    HSCDeviceTypeiPod2,
    HSCDeviceTypeiPod3,
    HSCDeviceTypeiPod4,
    HSCDeviceTypeiPod5,
    //simulator
    HSCDeviceTypeSimulator
};

@interface UIDevice (HSCDeviceType)
+ (BOOL)isPhone;
+ (BOOL)isIpad;
+ (BOOL)isIpod;
+ (HSCDeviceType)deviceType;

/**
 *当前的系统住版本，用于匹配不同系统之间的方法
 **/
+ (HSCOSType)OSMainType;

/**
 *当前系统完整版本，主要用于后端系统记录，进行数据分析
 **/
+ (NSString *)OSFullType;


@end
