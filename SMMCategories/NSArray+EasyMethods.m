//
//  NSArray+EasyMethods.m
//  SMMCategories
//
//  Created by 尚雷勋 on 2021/1/11.
//  Copyright © 2021 GiANTLEAP. All rights reserved.
//

#import "NSArray+EasyMethods.h"

@implementation NSArray (EasyMethods)

/// 另一个元素，只用于有两个元素的数组。
- (id)anotherObjectOf:(NSUInteger)index {
    
    if (self.count != 2) {
        return nil;
    }
    
    if (index == 0) {
        return self[1];
    } else {
        return self[0];
    }
}

/// 下一个元素，如果 index 为非负，则加 1，如果 index 为负，则减 1。
- (id)nextObjectOf:(NSUInteger)index {
    
    NSInteger targetIndex = (NSInteger)index;
    
    if (index < 0) {
        targetIndex--;
    } else {
        targetIndex++;
    }
    
    return [self smm_objectAtIndex:targetIndex];
}

/// 第二个元素。
- (id)secondObject {
    if (self.count < 2) {
        return nil;
    }
    return self[1];
}

/// 第三个元素。
- (id)thirdObject {
    if (self.count < 3) {
        return nil;
    }
    return self[2];
}

/// 支持倒序取值。
- (id)smm_objectAtIndex:(NSInteger)index {
    
    NSUInteger realIndex = index;
    
    if (realIndex < 0) {
        realIndex = self.count + index;
    }
    if (realIndex > self.count - 1) {
        return nil;
    }
    
    return [self objectAtIndex:realIndex];
}

@end
