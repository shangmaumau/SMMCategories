//
//  SMMTypedefs.h
//  SYJY
//
//  Created by 尚雷勋 on 2021/1/26.
//  Copyright © 2021 guangxihuancai. All rights reserved.
//

#ifndef SMMTypedefs_h
#define SMMTypedefs_h

#import <Foundation/Foundation.h>

typedef void(^PresenterCallback)(BOOL isSuccess, NSString * _Nullable errorText);
typedef void(^PresenterCallbackNormal)(BOOL isSuccess, NSDictionary * _Nullable data, NSString * _Nullable errorText);

typedef NSMutableArray<NSString *> NSStringMutableArray;
typedef NSMutableArray<NSNumber *> NSNumberMutableArray;

typedef NSArray<NSString *> NSStringArray;
typedef NSArray<NSNumber *> NSNumberArray;

#endif /* SMMTypedefs_h */
