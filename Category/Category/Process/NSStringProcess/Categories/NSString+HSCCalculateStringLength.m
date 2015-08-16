//
//  NSString+HSCCalculateStringLength.m
//  CApp
//
//  Created by 马健Jane on 15/6/29.
//  Copyright (c) 2015年 HSC. All rights reserved.
//

#import "NSString+HSCCalculateStringLength.h"

@implementation NSString (HSCCalculateStringLength)
- (CGSize)sizeWithFont:(UIFont *)font{
    NSDictionary * attributes = @{NSFontAttributeName : font};
    
    NSStringDrawingOptions options = NSStringDrawingUsesFontLeading |
                                     NSStringDrawingUsesLineFragmentOrigin |
                                     NSStringDrawingTruncatesLastVisibleLine;
    
    CGRect rect = [self boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT)
                       options:options
                    attributes:attributes
                       context:nil];
    
    return CGSizeMake(ceil(rect.size.width), ceil(rect.size.height));
}

@end



















