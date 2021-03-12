//
//  UIImage+EasyMethods.m
//  SMMCategories
//
//  Created by 尚雷勋 on 2021/3/2.
//  Copyright © 2021 GiANTLEAP. All rights reserved.
//
#import "UIImage+EasyMethods.h"

@implementation UIImage (EasyMethods)

+ (UIImage *)defaultAvatarOfSex:(NSUInteger)sex {
    if (sex == 1) {
        return UIImageNamed(@"default_avatar_man");
    }
    return UIImageNamed(@"default_avatar_women");
}

@end
