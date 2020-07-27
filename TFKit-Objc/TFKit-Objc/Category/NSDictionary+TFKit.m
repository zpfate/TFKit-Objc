//
//  NSDictionary+TFKit.m
//  TFKit-OC
//
//  Created by Twisted Fate on 2019/9/9.
//  Copyright © 2019 TwistedFate. All rights reserved.
//

#import "NSDictionary+TFKit.h"

@implementation NSDictionary (TFKit)

- (NSString *)tf_stringForKey:(NSString *)key {
    
    id object = [self objectForKey:key];
    if ((object == nil) ||[object isEqual:[NSNull null]]) {
        return @"";
    }
    if (![object isKindOfClass:[NSString class]]) {
        return [NSString stringWithFormat:@"%@", object];
    }
    return object;
}


- (NSInteger)tf_integerForKey:(NSString *)key {
    
    NSString *string = [self objectForKey:key];
    if ([string respondsToSelector:@selector(integerValue)]) {
        return [string integerValue];
    }
    return 0;
}

- (BOOL)tf_boolForKey:(NSString *)key {
    
    id object = self[key];
    if ([object isEqual:[NSNull null]]) {
        return NO;
    }
    if ([object isKindOfClass:[NSNumber class]]) {
        return [object boolValue];
    }
    if ([object isKindOfClass:[NSString class]]) {
        return [object boolValue];
    }
    return NO;
    
}

- (NSArray *)tf_arrayForKey:(NSString *)key {
    
    id object = [self objectForKey:key];
    if (object == nil || [object isEqual:[NSNull null]]) {
        object = @[];
    }
    if (![object isKindOfClass:[NSArray class]]) {
        // Data Error Format
        object = @[];
    }
    return object;
}
@end
