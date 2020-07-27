//
//  UITextField+TFKit.h
//  TFKit-Objc
//
//  Created by Twisted Fate on 2020/7/27.
//  Copyright © 2020 Twisted Fate. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITextField (TFKit)

+ (UITextField *)tf_textFieldWithFrame:(CGRect)frame fontSize:(CGFloat)fontSize text:(NSString *)text;

@end

NS_ASSUME_NONNULL_END
