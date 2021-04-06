//
//  UIImageView+TFKit.h
//  TFKit-Objc
//
//  Created by Twisted Fate on 2020/7/27.
//  Copyright © 2020 Twisted Fate. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TF_Macros.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIImageView (TFKit)

@property (nonatomic, copy) TFClickAction clickAction;


/// 创建imageView
/// @param frame 布局frame
/// @param imageName 图片名
+ (UIImageView *)tf_imageViewWithFrame:(CGRect)frame imageName:(NSString *)imageName;

@end

NS_ASSUME_NONNULL_END
