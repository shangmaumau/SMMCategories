//
//  UIViewController+EasyMethods.m
//  DFJY
//
//  Created by 尚雷勋 on 2021/3/6.
//  Copyright © 2021 guangxihuancai. All rights reserved.
//

#import "UIViewController+EasyMethods.h"

@implementation UIViewController (EasyMethods)

+ (__kindof UIViewController *)currentOfViewController:(__kindof UIViewController *)rootViewCtrl {
    
    __kindof UIViewController *wewantRootCtrl = rootViewCtrl;
    __kindof UIViewController *wewantViewCtrl = nil;
    
    if (rootViewCtrl.presentedViewController != nil) {
        wewantRootCtrl = rootViewCtrl.presentedViewController;
    }
    
    if ([rootViewCtrl isKindOfClass:[UITabBarController class]]) {
        wewantViewCtrl = [self currentOfViewController:((UITabBarController *)rootViewCtrl).selectedViewController];
    } else if ([rootViewCtrl isKindOfClass:[UINavigationController class]]) {
        wewantViewCtrl = [self currentOfViewController:((UINavigationController *)rootViewCtrl).visibleViewController];
    } else {
        wewantViewCtrl = wewantRootCtrl;
    }
    
    return wewantViewCtrl;
}

+ (__kindof UIViewController *)current {
    
    __kindof UIViewController *wewantViewCtrl = nil;
    
    if (UIApplication.sharedApplication.windows.lastObject.rootViewController != nil) {
        wewantViewCtrl = [self currentOfViewController:UIApplication.sharedApplication.windows.lastObject.rootViewController];
    }
    
    return wewantViewCtrl;
}

@end
