//
//  UIColor+EasyMethods.h
//  SMMCategories
//
//  Created by 尚雷勋 on 2021/1/20.
//  Copyright © 2021 GiANTLEAP. All rights reserved.
//

#import <UIKit/UIKit.h>

#define rgba(r, g, b, a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (EasyMethods)

+ (UIColor *)colorWithGray:(CGFloat)gray;
+ (UIColor *)colorWith255R:(CGFloat)r g:(CGFloat)g b:(CGFloat)b;

+ (UIColor *)doubleFishThemeColor;
+ (UIColor *)doubleFishTintColor;
+ (UIColor *)doubleFishSubtitleColor;
+ (UIColor *)doubleFishTextGrayColor;

+ (UIColor *)blueyanThemeColor;
+ (UIColor *)blueyanBackgroundColor;
+ (UIColor *)blueyanTitleColor;
+ (UIColor *)blueyanSubtitleColor;
+ (UIColor *)blueyanTintColor;
+ (UIColor *)blueyanTextNormalColor;

+ (UIColor *)colorWithHexString:(NSString *)hexString;

@end

NS_ASSUME_NONNULL_END
