//
//  NSObject+SafeStringValue.m
//  SMMCategories
//
//  Created by 尚雷勋 on 2021/1/26.
//  Copyright © 2021 GiANTLEAP. All rights reserved.
//

#import "NSObject+SafeStringValue.h"

@implementation NSObject (SafeStringValue)

- (id)valueForUndefinedKey:(NSString *)key {
    return @"";
}

- (NSString *)stringWithKey:(NSString *)key {
    
    if ([self isKindOfClass:[NSString class]]) {
        return (NSString *)self;
    }
    
    if ([self isKindOfClass:[NSDictionary class]]) {
        
        id value = ((NSDictionary *)self)[key];
        
        if ([value isKindOfClass:[NSString class]]) {
            return (NSString *)value;
        }
        if ([value isKindOfClass:[NSNumber class]]) {
            return [((NSNumber *)value) stringValue];
        }
    }
    
    if ([self respondsToSelector:@selector(valueForKey:)]) {
        
        id value = [self valueForKey:key];
        if ([value isKindOfClass:[NSString class]]) {
            return (NSString *)value;
        }
        if ([value isKindOfClass:[NSNumber class]]) {
            return [((NSNumber *)value) stringValue];
        }
    }
    
    return @"";
}

- (NSString *)stringWithTitleOrNameKey {
    
    if ([self stringWithKey:@"title"].length > 0) {
        return [self stringWithKey:@"title"];
    }
    
    if ([self stringWithKey:@"name"].length > 0) {
        return [self stringWithKey:@"name"];
    }
    
    return @"";
}

@end
