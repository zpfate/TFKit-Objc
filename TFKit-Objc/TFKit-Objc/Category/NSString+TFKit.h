//
//  NSString+TFKit.h
//  AnalysisAFNetworking
//
//  Created by Twisted Fate on 2018/12/19.
//  Copyright © 2018 TwistedFate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface NSString (TFKit)

/// NSDate转NSString
/// @param date 日期
+ (NSString *)tf_stringFromDate:(NSDate *)date;

/// 计算字符串在UILabel等控件中的显示高度
/// @param size 空间大小,
/// @param fontSize 字体大小 指定宽高其一,另一赋值为CGFloatMax
- (CGSize)tf_boundingSize:(CGSize)size fontSize:(CGFloat)fontSize;

/// MD5
- (NSString *)tf_MD5String;

@end

NS_ASSUME_NONNULL_END
