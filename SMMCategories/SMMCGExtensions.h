//
//  SMMCGExtensions.h
//  ViewDemos
//
//  Created by 尚雷勋 on 2021/1/24.
//

#ifndef SMMCGExtensions_h
#define SMMCGExtensions_h

#import <CoreGraphics/CGGeometry.h>

CG_INLINE CGRect CGRectNewY(CGFloat y, CGRect rect);
CG_INLINE CGRect CGRectNewHeight(CGFloat height, CGRect rect);
CG_INLINE CGRect CGRectAddY(CGFloat deltaY, CGRect rect);
CG_INLINE CGRect CGRectAddWidth(CGFloat deltaWidth, CGRect rect);

CG_INLINE CGRect
CGRectNewY(CGFloat y, CGRect rect) {
    CGPoint point = rect.origin;
    point.y = y;
    rect.origin = point;
    return rect;
}

CG_INLINE CGRect
CGRectNewHeight(CGFloat height, CGRect rect) {
    CGSize size = rect.size;
    size.height = height;
    rect.size = size;
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

#endif /* SMMCGExtensions_h */
