//
//  UIColor+TFKit.h
//  TFKit-OC
//
//  Created by Twisted Fate on 2019/6/29.
//  Copyright © 2019 TwistedFate. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (TFKit)


/// 16进制字符串转颜色
/// @param string 16进制字符串
+ (UIColor *)tf_colorWithHexString:(NSString *)string;

@end

NS_ASSUME_NONNULL_END
