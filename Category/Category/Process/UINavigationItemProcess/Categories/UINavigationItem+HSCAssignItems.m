//
//  UINavigationItem+HSCAssignItems.m
//  CApp
//
//  Created by 马健Jane on 15/6/26.
//  Copyright (c) 2015年 HSC. All rights reserved.
//

#import "UINavigationItem+HSCAssignItems.h"

@implementation UINavigationItem (HSCAssignItems)
- (void)assignToItem:(UINavigationItem *)item{
    item.leftBarButtonItem = self.leftBarButtonItem;
    item.leftBarButtonItems = self.leftBarButtonItems;
    item.title = self.title;
    item.titleView = self.titleView;
    item.rightBarButtonItem = self.rightBarButtonItem;
    item.rightBarButtonItems = self.rightBarButtonItems;
}
@end
