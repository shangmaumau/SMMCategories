//
//  SMMCGExtensions.h
//  SMMCategories
//
//  Created by 尚雷勋 on 2021/1/24.
//  Copyright © 2021 GiANTLEAP. All rights reserved.
//

#ifndef SMMCGExtensions_h
#define SMMCGExtensions_h

#import <CoreGraphics/CGGeometry.h>

CG_INLINE CGRect CGRectNewX(CGFloat x, CGRect rect);
CG_INLINE CGRect CGRectNewY(CGFloat y, CGRect rect);
CG_INLINE CGRect CGRectNewWidth(CGFloat width, CGRect rect);
CG_INLINE CGRect CGRectNewHeight(CGFloat height, CGRect rect);
CG_INLINE CGRect CGRectNewOrigin(CGPoint origin, CGRect rect);
CG_INLINE CGRect CGRectNewSize(CGSize size, CGRect rect);

CG_INLINE CGRect CGRectAddX(CGFloat deltaX, CGRect rect);
CG_INLINE CGRect CGRectAddY(CGFloat deltaY, CGRect rect);
CG_INLINE CGRect CGRectAddWidth(CGFloat deltaWidth, CGRect rect);
CG_INLINE CGRect CGRectAddHeight(CGFloat deltaHeight, CGRect rect);

CG_INLINE CGRect
CGRectNewX(CGFloat x, CGRect rect) {
    CGPoint point = rect.origin;
    point.x = x;
    rect.origin = point;
    return rect;
}

CG_INLINE CGRect
CGRectNewY(CGFloat y, CGRect rect) {
    CGPoint point = rect.origin;
    point.y = y;
    rect.origin = point;
    return rect;
}

CG_INLINE CGRect
CGRectNewWidth(CGFloat width, CGRect rect) {
    CGSize size = rect.size;
    size.width = width;
    rect.size = size;
    return rect;
}

CG_INLINE CGRect
CGRectNewHeight(CGFloat height, CGRect rect) {
    CGSize size = rect.size;
    size.height = height;
    rect.size = size;
    return rect;
}

CG_INLINE CGRect
CGRectNewOrigin(CGPoint origin, CGRect rect) {
    rect.origin = origin;
    return rect;
}

CG_INLINE CGRect
CGRectNewSize(CGSize size, CGRect rect) {
    rect.size = size;
    return rect;
}

CG_INLINE
CGRect CGRectAddX(CGFloat deltaX, CGRect rect) {
    CGPoint point = rect.origin;
    point.x = point.x + deltaX;
    rect.origin = point;
    return rect;
}

CG_INLINE
CGRect CGRectAddY(CGFloat deltaY, CGRect rect) {
    CGPoint point = rect.origin;
    point.y = point.y + deltaY;
    rect.origin = point;
    return rect;
}

CG_INLINE
CGRect CGRectAddWidth(CGFloat deltaWidth, CGRect rect) {
    CGSize size = rect.size;
    size = CGSizeMake(size.width + deltaWidth, size.height);
    rect.size = size;
    return rect;
}

CG_INLINE
CGRect CGRectAddHeight(CGFloat deltaHeight, CGRect rect) {
    CGSize size = rect.size;
    size = CGSizeMake(size.width, size.height + deltaHeight);
    rect.size = size;
    return rect;
}

#endif /* SMMCGExtensions_h */
