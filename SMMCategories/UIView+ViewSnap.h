//
//  UIView+ViewSnap.h
//  SMMCategories
//
//  Created by 尚雷勋 on 2021/1/6.
//  Copyright © 2021 GiANTLEAP. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (ViewSnap)

- (nullable UIImage *)snap;
- (nullable UIImage *)snapInBounds:(CGRect)rect;

@end

NS_ASSUME_NONNULL_END
