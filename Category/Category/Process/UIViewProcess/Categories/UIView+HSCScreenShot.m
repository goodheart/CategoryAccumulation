//
//  UIView+HSCScreenShot.m
//  CApp
//
//  Created by 马健Jane on 15/6/26.
//  Copyright (c) 2015年 HSC. All rights reserved.
//

#import "UIView+HSCScreenShot.h"

@implementation UIView (HSCScreenShot)

- (UIImage *)screenShot{
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, NO, [UIScreen mainScreen].scale);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    [self.layer renderInContext:context];
    UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return image;
}

@end
