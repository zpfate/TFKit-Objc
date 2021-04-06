//
//  UIButton+TFKit.h
//  TFKit-Objc
//
//  Created by Twisted Fate on 2020/4/28.
//  Copyright © 2020 Twisted Fate. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TF_Macros.h"
NS_ASSUME_NONNULL_BEGIN

@interface UIButton (TFKit)

/// 点击事件
@property (nonatomic, copy) TFClickAction clickAction;

/// 创建Button
/// @param frame 布局位置
/// @param title 标题
/// @param titleColor 标题字体颜色
/// @param font 标题字体大小
/// @param clickAction 点击回调
+ (UIButton *)tf_buttonWithFrame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titleColor font:(UIFont *)font clickAction:(TFClickAction)clickAction;

/// 创建Button
/// @param frame 布局位置
/// @param imageName 正常图片
/// @param selectImageName 选中图片
/// @param clickAction 点击回调
+ (UIButton *)tf_buttonWithFrame:(CGRect)frame imageName:(NSString *)imageName selectImageName:(NSString *)selectImageName clickAction:(TFClickAction)clickAction;

@end
NS_ASSUME_NONNULL_END
