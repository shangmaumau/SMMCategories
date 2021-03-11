//
//  UIView+ViewSnap.m
//  SMMCategories
//
//  Created by 尚雷勋 on 2021/1/6.
//  Copyright © 2021 GiANTLEAP. All rights reserved.
//

#import "UIView+ViewSnap.h"

@implementation UIView (ViewSnap)

- (nullable UIImage *)snap
{
    return [self snapInBounds:self.bounds];
}

- (nullable UIImage *)snapInBounds:(CGRect)rect
{
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, [UIScreen mainScreen].scale);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    if (context == NULL)
    {
        return nil;
    }
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, -rect.origin.x, -rect.origin.y);
    
    // [self layoutIfNeeded];
    
    if ([self respondsToSelector:@selector(drawViewHierarchyInRect:afterScreenUpdates:)])
    {
        [self drawViewHierarchyInRect:self.bounds afterScreenUpdates:NO];
    }
    else
    {
        [self.layer renderInContext:context];
    }
    
    CGContextRestoreGState(context);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
