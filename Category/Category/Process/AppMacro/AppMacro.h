//
//  AppMacro.h
//  CApp
//
//  Created by 马健Jane on 15/6/30.
//  Copyright (c) 2015年 HSC. All rights reserved.
//

#ifndef CApp_AppMacro_h
#define CApp_AppMacro_h

//Block定义
typedef void(^OneParameterBlock)(id);

#define Macro_AdaptiveLength(length) [UIScreen adaptiveLength:length]
#endif
