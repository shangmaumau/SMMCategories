//
//  UIView+EasyMethods.m
//  SMMCategories
//
//  Created by 尚雷勋 on 2021/1/22.
//  Copyright © 2021 GiANTLEAP. All rights reserved.
//

#import "UIView+EasyMethods.h"

@implementation UIView (EasyMethods)

/**
 给图层加圆角。
 @discussion 使用自动布局，需要在 `layoutSubviews` 中使用。
 @param radius 圆角尺寸。
 @param corner 圆角位置。
 */
- (void)layerCornerRadiusWithRadius:(CGFloat)radius corner:(UIRectCorner)corner {
    if (@available(iOS 11.0, *)) {
        self.layer.cornerRadius = radius;
        self.layer.maskedCorners = (CACornerMask)corner;
    } else {
        UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:corner cornerRadii:CGSizeMake(radius, radius)];
        CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
        maskLayer.frame = self.bounds;
        maskLayer.path = path.CGPath;
        self.layer.mask = maskLayer;
    }
}

@end
