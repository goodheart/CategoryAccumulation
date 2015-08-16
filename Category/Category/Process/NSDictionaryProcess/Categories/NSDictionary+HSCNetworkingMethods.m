//
//  NSDictionary+HSCNetworkingMethods.m
//  CApp
//
//  Created by 马健Jane on 15/7/11.
//  Copyright (c) 2015年 HSC. All rights reserved.
//

#import "NSDictionary+HSCNetworkingMethods.h"

@implementation NSDictionary (HSCNetworkingMethods)

- (NSString *)hsc_jsonString{
    NSData * jsonData = [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:nil];
    
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
}


@end
