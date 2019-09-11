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

- (NSString *)tf_stringForKey:(id)key;

- (NSInteger)tf_integerForKey:(NSString *)key;

- (BOOL)tf_boolForKey:(NSString *)key;

- (NSArray *)tf_arrayForKey:(id)key;

@end

NS_ASSUME_NONNULL_END
