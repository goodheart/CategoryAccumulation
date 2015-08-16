//
//  NSDictionary+HSCNetworkingMethods.h
//  CApp
//
//  Created by 马健Jane on 15/7/11.
//  Copyright (c) 2015年 HSC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (HSCNetworkingMethods)
//将字典转成json
- (NSString *)hsc_jsonString;
@end
