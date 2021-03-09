//
//  UIImage+EasyMethods.h
//  DFJY
//
//  Created by 尚雷勋 on 2021/3/2.
//  Copyright © 2021 guangxihuancai. All rights reserved.
//

#import <UIKit/UIKit.h>

#define UIImageNamed(__name__) [UIImage imageNamed:__name__]

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (EasyMethods)

+ (UIImage *)defaultAvatarOfSex:(NSUInteger)sex;

@end

NS_ASSUME_NONNULL_END
