//
//  UIImage+HSCColorImage.h
//  CApp
//
//  Created by 马健Jane on 15/6/26.
//  Copyright (c) 2015年 HSC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (HSCColorImage)
+ (UIImage *)createImageWithColor:(UIColor *)color;
+ (UIImage *)createImageWithColor:(UIColor *)color size:(CGSize)size;
@end
