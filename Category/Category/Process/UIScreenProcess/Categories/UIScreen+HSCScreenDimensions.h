//
//  UIScreen+HSCScreenDimensions.h
//  UIScreen的尺寸分类
//
//  Created by 马健Jane on 15/7/1.
//  Copyright (c) 2015年 HSC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScreen (HSCScreenDimensions)

+ (NSUInteger)width;
+ (NSUInteger)height;
+ (CGFloat)scale;//屏幕分辨率
+ (CGFloat)ratio;//屏幕宽高比

/**
 *  @brief  以iPhone6为基准，根据当前设备适配传进来的宽高
 *  @param length 宽 或 高
 *  @return 适配后的宽高
 */
+ (CGFloat)adaptiveLength:(CGFloat)length;

@end
