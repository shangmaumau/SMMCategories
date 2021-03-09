//
//  NSObject+SafeStringValue.h
//  SYJY
//
//  Created by 尚雷勋 on 2021/1/26.
//  Copyright © 2021 guangxihuancai. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (SafeStringValue)

- (NSString *)stringWithKey:(NSString *)key;
- (NSString *)stringWithTitleOrNameKey;

@end

NS_ASSUME_NONNULL_END
