//
//  UIView+TFKit.h
//  AnalysisAFNetworking
//
//  Created by Twisted Fate on 2018/12/19.
//  Copyright © 2018 TwistedFate. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (TFKit)

/// 高度
@property (nonatomic, assign) CGFloat tf_height;
/// 宽度
@property (nonatomic, assign) CGFloat tf_width;
/// y轴起始点
@property (nonatomic, assign) CGFloat tf_top;
/// x轴起始点
@property (nonatomic, assign) CGFloat tf_left;
/// y轴结束点
@property (nonatomic, assign) CGFloat tf_bottom;
///x轴结束点
@property (nonatomic, assign) CGFloat tf_right;
/// x轴中心
@property (nonatomic, assign) CGFloat tf_centerX;
/// y轴中心
@property (nonatomic, assign) CGFloat tf_centerY;

/// 设置指定位置的圆角
/// @param corners 圆角位置
/// @param radius 圆角值
- (void)tf_setCorners:(UIRectCorner)corners radius:(CGFloat)radius;

/// 移除所有子视图
- (void)tf_removeAllSubviews;

/// 持有当前View的Controller
- (UIViewController *)tf_getCurrentViewController;

@end

NS_ASSUME_NONNULL_END
