//
//  UIScreen+EasyMethods.h
//  SMMCategories
//
//  Created by 尚雷勋 on 2021/1/20.
//  Copyright © 2021 GiANTLEAP. All rights reserved.
//
#import <UIKit/UIKit.h>

#define kUIPadding       (16.0)
#define kUIPaddingHalf   (8.0)
#define kUIPaddingDouble (32.0)
#define kWidthScale      ([UIScreen widthScale])

NS_ASSUME_NONNULL_BEGIN

@interface UIScreen (EasyMethods)

+ (CGFloat)width_c;
+ (CGFloat)height_c;

+ (CGFloat)widthScale;
+ (CGFloat)heigthScale;

+ (CGFloat)topSafePadding;
+ (CGFloat)bottomSafePadding;

@end

NS_ASSUME_NONNULL_END
