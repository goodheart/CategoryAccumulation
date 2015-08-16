//
//  UIImage+HSCColorImage.m
//  CApp
//
//  Created by 马健Jane on 15/6/26.
//  Copyright (c) 2015年 HSC. All rights reserved.
//

#import "UIImage+HSCColorImage.h"

@implementation UIImage (HSCColorImage)
+ (UIImage *)createImageWithColor:(UIColor *)color{
    return [[self class] createImageWithColor:color size:CGSizeMake(1, 1)];
}
+ (UIImage *)createImageWithColor:(UIColor *)color size:(CGSize)size{
    UIGraphicsBeginImageContext(size);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(context, color.CGColor);
    CGContextSetLineWidth(context, 1.0);
    UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    return image;
}
@end
