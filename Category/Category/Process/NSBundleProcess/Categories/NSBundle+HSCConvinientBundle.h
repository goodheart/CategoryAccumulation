//
//  NSBundle+HSCConvinientBundle.h
//  CApp
//
//  Created by 马健Jane on 15/6/30.
//  Copyright (c) 2015年 HSC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSBundle (HSCConvinientBundle)
@property (readonly,copy) NSString * appName;
@property (readonly,copy) NSString * minimumOSVersion;
@end
