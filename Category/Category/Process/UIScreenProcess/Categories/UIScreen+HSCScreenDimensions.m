//
//  UIScreen+HSCScreenDimensions.m
//  CApp
//
//  Created by 马健Jane on 15/7/1.
//  Copyright (c) 2015年 HSC. All rights reserved.
//

#import "UIScreen+HSCScreenDimensions.h"
#import "UIDevice+HSCDeviceType.h"

static NSUInteger _width = 0;
static NSUInteger _height = 0;
static CGFloat _scaleToiPhone6 = 0.01;

@implementation UIScreen (HSCScreenDimensions)
#pragma mark - Life Cycle

#pragma mark - Public Method
+ (NSUInteger)width{
    if (0 == _width) {
        _width = [UIScreen mainScreen].bounds.size.width;
    }
    
    return _width;
}

+ (NSUInteger)height{
    if (0 == _height) {
        _height = [UIScreen mainScreen].bounds.size.height;
    }
    
    return _height;
}

+ (CGFloat)scale{//分辨率
    return [UIScreen mainScreen].scale;
}

+ (CGFloat)ratio{//宽高比
    return [self width] / [self height];
}

+ (CGFloat)adaptiveLength:(CGFloat)length{
    if (0.01 == _scaleToiPhone6) {
        _scaleToiPhone6 = [self currentDeviceScaleToiPhone6];
    }
    
    return length * _scaleToiPhone6;
}

#pragma mark - Private Method
+ (CGSize)sizeForDeviceType:(HSCDeviceType)deviceType{
    CGSize size = CGSizeZero;
    switch (deviceType) {
        case HSCDeviceTypeiPhone6:
            size = CGSizeMake(375.0, 667.0);
            break;
            
        case HSCDeviceTypeiPhone6P:
            size = CGSizeMake(414.0, 736.0);
            break;
            
        case HSCDeviceTypeiPhone5:
        case HSCDeviceTypeiPhone5c:
        case HSCDeviceTypeiPhone5s:
            size = CGSizeMake(320.0, 568.0);
            break;
            
        case HSCDeviceTypeiPhone4s:
            size = CGSizeMake(320.0, 480.0);
            break;
            
        default:
            
            break;
    }
    
    return size;
}

+ (CGFloat)currentDeviceScaleToiPhone6{
    HSCDeviceType deviceType = [UIDevice deviceType];
    CGFloat scale = 1;
    switch (deviceType) {
        case HSCDeviceTypeiPhone6:
            scale = 1;
            break;
            case HSCDeviceTypeiPhone6P:
            scale = [self sizeForDeviceType:HSCDeviceTypeiPhone6P].width / [self sizeForDeviceType:HSCDeviceTypeiPhone6].width;
            break;
            case HSCDeviceTypeiPhone5:
           case HSCDeviceTypeiPhone5c:
           case HSCDeviceTypeiPhone5s:
            scale = [self sizeForDeviceType:HSCDeviceTypeiPhone5s].width / [self sizeForDeviceType:HSCDeviceTypeiPhone6].width;
            break;
            case HSCDeviceTypeiPhone4:
            case HSCDeviceTypeiPhone4s:
        {
            CGSize sizeFor4s = [self sizeForDeviceType:HSCDeviceTypeiPhone4s];
            CGSize sizeFor6 = [self sizeForDeviceType:HSCDeviceTypeiPhone6];
            
            scale = (sizeFor4s.width / sizeFor6.width + sizeFor4s.height / sizeFor6.height) / 2;
        }
            break;
        default:
            break;
    }
    
    return scale;
}

@end






