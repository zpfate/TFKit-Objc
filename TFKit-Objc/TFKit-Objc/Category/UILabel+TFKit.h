//
//  UILabel+TFKit.h
//  TFKit-Objc
//
//  Created by Twisted Fate on 2020/7/27.
//  Copyright © 2020 Twisted Fate. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (TFKit)

+ (UILabel *)tf_labelWithFrame:(CGRect)frame fontSize:(CGFloat)fontSize textColor:(UIColor *)textColor text:(NSString *)text;


@end

NS_ASSUME_NONNULL_END
