//
//  UIImage+EasyMethods.h
//  SMMCategories
//
//  Created by 尚雷勋 on 2021/3/2.
//  Copyright © 2021 GiANTLEAP. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

UIImage * _Nullable UIImageNamed(NSString * imgName);

@interface UIImage (EasyMethods)

+ (UIImage *)defaultAvatarOfSex:(NSUInteger)sex;

@end

NS_ASSUME_NONNULL_END
