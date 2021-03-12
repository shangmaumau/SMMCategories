//
//  UIScreen+EasyMethods.m
//  SMMCategories
//
//  Created by 尚雷勋 on 2021/1/20.
//  Copyright © 2021 GiANTLEAP. All rights reserved.
//

#import "UIScreen+EasyMethods.h"

@implementation UIScreen (EasyMethods)

/// 屏幕宽。
+ (CGFloat)width_c {
    return [UIScreen mainScreen].bounds.size.width;
}

/// 屏幕高。
+ (CGFloat)height_c {
    return [UIScreen mainScreen].bounds.size.height;
}

/// 宽比。相较于 iPhone 6 尺寸（point 计）。
+ (CGFloat)widthScale {
    return [self width_c] / 375.0;
}

/// 高比。相较于 iPhone 6 尺寸（point 计）。
+ (CGFloat)heigthScale {
    return [self height_c] / 667.0;
}

/// 顶部安全距离。仅 iOS 11.0 以上系统需要考虑。
+ (CGFloat)topSafePadding {
    if (@available(iOS 11.0, *)) {
        UIWindow *window = UIApplication.sharedApplication.windows.firstObject;
        CGRect safeFrame = window.safeAreaLayoutGuide.layoutFrame;
        return CGRectGetMinY(safeFrame);
    }
    return 0.0;
}

/// 底部安全距离。仅 iOS 11.0 以上系统需要考虑。
+ (CGFloat)bottomSafePadding {
    if (@available(iOS 11.0, *)) {
        UIWindow *window = UIApplication.sharedApplication.windows.firstObject;
        CGRect safeFrame = window.safeAreaLayoutGuide.layoutFrame;
        return CGRectGetMaxY(window.frame) - CGRectGetMaxY(safeFrame);
    }
    return 0.0;
}

@end
