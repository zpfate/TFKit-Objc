//
//  UINavigationController+TFKit.h
//  TFKit-OC
//
//  Created by Twisted Fate on 2019/6/29.
//  Copyright © 2019 TwistedFate. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UINavigationController (TFKit)


/// 控制器跳转
/// @param viewController 跳转的控制器
/// @param animated 是否展示动画
/// @param hide 是否隐藏标前视图
- (void)tf_pushViewController:(UIViewController *)viewController animated:(BOOL)animated hideTabbar:(BOOL)hide;

- (void)tf_setNavigationBarTitleColor:(NSString *)hexString fontSize:(CGFloat)fontSize;

@end

NS_ASSUME_NONNULL_END
