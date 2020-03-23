//
//  NSDictionary+TFKit.h
//  TFKit-OC
//
//  Created by Twisted Fate on 2019/9/9.
//  Copyright © 2019 TwistedFate. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDictionary (TFKit)

/// 返回NSString
/// @param key key
- (NSString *)tf_stringForKey:(NSString *)key;
/// 返回NSInteger
/// @param key key
- (NSInteger)tf_integerForKey:(NSString *)key;
/// 返回BOOL
/// @param key key
- (BOOL)tf_boolForKey:(NSString *)key;
/// 返回数组
/// @param key key
- (NSArray *)tf_arrayForKey:(NSString *)key;

@end

NS_ASSUME_NONNULL_END
