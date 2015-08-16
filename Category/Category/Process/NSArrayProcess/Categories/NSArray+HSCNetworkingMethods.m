//
//  NSArray+HSCNetworkingMethods.m
//  CApp
//
//  Created by 马健Jane on 15/7/10.
//  Copyright (c) 2015年 HSC. All rights reserved.
//

#import "NSArray+HSCNetworkingMethods.h"

@implementation NSArray (HSCNetworkingMethods)

//将数组转成json格式
- (NSString *)hsc_jsonString{
    NSData * data = [NSJSONSerialization dataWithJSONObject:self
                                    options:NSJSONWritingPrettyPrinted
                                      error:nil];
    return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}

//将数组拼接成字符串，用于Get请求
- (NSString *)hsc_paramsStringWithOrderedType:(HSCArrayOrderedType)orderedType{
    NSMutableString * resultStrM = [NSMutableString string];
    
    NSArray * resultArrayI = [self hsc_arrayOrderByType:orderedType
                                            elementType:HSCArrayElementTypeString];
    
    [resultArrayI enumerateObjectsUsingBlock:^(NSString * str, NSUInteger idx, BOOL *stop) {
        if (0 == resultStrM.length) {
            [resultStrM appendString:str];
        } else {
            [resultStrM appendFormat:@"&%@",str];
        }
    }];
    
    return resultStrM;
}

- (NSArray *)hsc_arrayOrderByType:(HSCArrayOrderedType)orderedType
                      elementType:(HSCArrayElementType)elementType{
    NSArray * resultArray = nil;
    switch (elementType) {
        case HSCArrayElementTypeNumber:
            resultArray = [self sortedArrayUsingComparator:^NSComparisonResult(NSNumber * num1, NSNumber * num2) {
                NSComparisonResult result = [num1 compare:num2];
                
                return orderedType == HSCArrayOrderedTypeAscending ? result : -result;
            }];
            break;
        case HSCArrayElementTypeString:
            resultArray = [self sortedArrayUsingComparator:^NSComparisonResult(NSString * str1, NSString * str2) {
                NSComparisonResult result = [str1 compare:str2];
                
                return orderedType == HSCArrayOrderedTypeAscending ? result : -result;
            }];
            break;
        default:
            resultArray = self;
            break;
    }
    
    return resultArray;
}

@end




