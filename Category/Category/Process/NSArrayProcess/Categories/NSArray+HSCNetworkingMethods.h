//
//  NSArray+HSCNetworkingMethods.h
//  CApp
//
//  Created by 马健Jane on 15/7/10.
//  Copyright (c) 2015年 HSC. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, HSCArrayOrderedType) {
    HSCArrayOrderedTypeAscending,//升序
    HSCArrayOrderedTypeDescending//降序
};

typedef NS_ENUM(NSUInteger, HSCArrayElementType) {
    HSCArrayElementTypeString,
    HSCArrayElementTypeNumber
};

@interface NSArray (HSCNetworkingMethods)

//对数组进行降序排列或升序排列,数组元素必须是NSString类型
- (NSArray *)hsc_arrayOrderByType:(HSCArrayOrderedType)orderedType
                      elementType:(HSCArrayElementType)elementType;

//将数组拼接成字符串，用于Get请求
- (NSString *)hsc_paramsStringWithOrderedType:(HSCArrayOrderedType)orderedType;

//将数组转成json格式
- (NSString *)hsc_jsonString;

@end
