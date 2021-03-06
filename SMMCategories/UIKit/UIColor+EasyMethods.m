//
//  UIColor+EasyMethods.m
//  SMMCategories
//
//  Created by 尚雷勋 on 2021/1/20.
//  Copyright © 2021 GiANTLEAP. All rights reserved.
//

#import "UIColor+EasyMethods.h"

@implementation UIColor (EasyMethods)

+ (UIColor *)colorWithGray:(CGFloat)gray {
    return [UIColor colorWithRed:gray/255.0 green:gray/255.0 blue:gray/255.0 alpha:1.0];
}

+ (UIColor *)colorWith255R:(CGFloat)r g:(CGFloat)g b:(CGFloat)b {
    return [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1.0];
}

// MARK: - df 的颜色们

+ (UIColor *)doubleFishThemeColor {
    return [UIColor colorWith255R:32.0 g:13.0 b:86.0];
}

+ (UIColor *)doubleFishSubtitleColor {
    return [UIColor colorWith255R:99.0 g:85.0 b:136.0];
}

+ (UIColor *)doubleFishTintColor {
    return [UIColor colorWith255R:255.0 g:120.0 b:253.0];
}

+ (UIColor *)doubleFishTextGrayColor {
    return [UIColor colorWith255R:176.0 g:169.0 b:194.0];
}

// MARK: - by 的颜色们

+ (UIColor *)blueyanThemeColor {
    return [UIColor colorWith255R:253.0 g:66.0 b:97.0];
}

+ (UIColor *)blueyanTitleColor {
    return [UIColor colorWith255R:242.0 g:68.0 b:35.0];
}

+ (UIColor *)blueyanSubtitleColor {
    return [UIColor colorWith255R:253.0 g:66.0 b:97.0];
}

+ (UIColor *)blueyanTextNormalColor {
    return [UIColor colorWith255R:241.0 g:41.0 b:48.0];
}

+ (UIColor *)blueyanBackgroundColor {
    return [UIColor colorWith255R:206.0 g:3.0 b:98.0];
}

+ (UIColor *)blueyanTintColor {
    return [UIColor colorWith255R:253.0 g:66.0 b:97.0];
}

CGFloat jk_colorComponentFrom(NSString *string, NSUInteger start, NSUInteger length) {
    NSString *substring = [string substringWithRange:NSMakeRange(start, length)];
    NSString *fullHex = length == 2 ? substring : [NSString stringWithFormat: @"%@%@", substring, substring];
    
    unsigned hexComponent;
    [[NSScanner scannerWithString: fullHex] scanHexInt: &hexComponent];
    return hexComponent / 255.0;
}

+ (UIColor *)colorWithHexString:(NSString *)hexString {
    CGFloat alpha, red, blue, green;
    
    NSString *colorString = [[hexString stringByReplacingOccurrencesOfString:@"#" withString:@""] uppercaseString];
    switch ([colorString length]) {
        case 3: // #RGB
            alpha = 1.0f;
            red   = jk_colorComponentFrom(colorString, 0, 1);
            green = jk_colorComponentFrom(colorString, 1, 1);
            blue  = jk_colorComponentFrom(colorString, 2, 1);
            break;
            
        case 4: // #ARGB
            alpha = jk_colorComponentFrom(colorString, 0, 1);
            red   = jk_colorComponentFrom(colorString, 1, 1);
            green = jk_colorComponentFrom(colorString, 2, 1);
            blue  = jk_colorComponentFrom(colorString, 3, 1);
            break;
            
        case 6: // #RRGGBB
            alpha = 1.0f;
            red   = jk_colorComponentFrom(colorString, 0, 2);
            green = jk_colorComponentFrom(colorString, 2, 2);
            blue  = jk_colorComponentFrom(colorString, 4, 2);
            break;
            
        case 8: // #AARRGGBB
            alpha = jk_colorComponentFrom(colorString, 0, 2);
            red   = jk_colorComponentFrom(colorString, 2, 2);
            green = jk_colorComponentFrom(colorString, 4, 2);
            blue  = jk_colorComponentFrom(colorString, 6, 2);
            break;
            
        default:
            return nil;
    }
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}

@end
