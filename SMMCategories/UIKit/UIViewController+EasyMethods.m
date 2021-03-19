//
//  UIViewController+EasyMethods.m
//  SMMCategories
//
//  Created by 尚雷勋 on 2021/3/6.
//  Copyright © 2021 GiANTLEAP. All rights reserved.
//

#import "UIViewController+EasyMethods.h"

@implementation UIViewController (EasyMethods)

+ (__kindof UIViewController * _Nullable)currentOfViewController:(__kindof UIViewController *)rootViewCtrl {
    
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
    __kindof UIViewController *rootViewCtrl = UIApplication.sharedApplication.windows.lastObject.rootViewController;
    
    if (rootViewCtrl != nil) {
        wewantViewCtrl = [self currentOfViewController:rootViewCtrl];
    }
    
    return wewantViewCtrl;
}

@end
