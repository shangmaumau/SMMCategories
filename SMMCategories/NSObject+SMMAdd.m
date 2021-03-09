//
//  NSObject+SMMAdd.m
//  SYJY
//
//  Created by 尚雷勋 on 2021/1/27.
//  Copyright © 2021 guangxihuancai. All rights reserved.
//

#import "NSObject+SMMAdd.h"

@implementation NSObject (SMMAdd)

- (BOOL)isDictionaryClass {
    return [self isKindOfClass:[NSDictionary class]];
}

- (BOOL)isArrayClass {
    return [self isKindOfClass:[NSArray class]];
}

- (BOOL)isStringClass {
    return [self isKindOfClass:[NSString class]];
}

- (BOOL)isNumberClass {
    return [self isKindOfClass:[NSNumber class]];
}

@end
