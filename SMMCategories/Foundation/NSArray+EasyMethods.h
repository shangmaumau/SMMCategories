//
//  NSArray+EasyMethods.h
//  SMMCategories
//
//  Created by 尚雷勋 on 2021/1/11.
//  Copyright © 2021 GiANTLEAP. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSArray<__covariant ObjectType> (EasyMethods)

- (nullable ObjectType)anotherObjectOf:(NSUInteger)index;

- (nullable ObjectType)nextObjectOf:(NSUInteger)index;

- (nullable ObjectType)secondObject;

- (nullable ObjectType)thirdObject;

- (nullable ObjectType)smm_objectAtIndex:(NSInteger)index;


@end

NS_ASSUME_NONNULL_END
