//
//  UIDevice+HSCDeviceIdentifier.h
//  CApp
//
//  Created by 马健Jane on 15/7/10.
//  Copyright (c) 2015年 HSC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDevice (HSCDeviceIdentifier)
- (NSString *)hsc_uuid;      //获取 应用唯一标示符,建议存到keyChain中，充当设备唯一表示符
- (NSString *)hsc_createUUID;//创建 应用唯一标示符,
@end
