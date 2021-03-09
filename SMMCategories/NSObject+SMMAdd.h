//
//  NSObject+SMMAdd.h
//  SYJY
//
//  Created by 尚雷勋 on 2021/1/27.
//  Copyright © 2021 guangxihuancai. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (SMMAdd)

- (BOOL)isDictionaryClass;
- (BOOL)isArrayClass;

- (BOOL)isStringClass;
- (BOOL)isNumberClass;

@end

NS_ASSUME_NONNULL_END
