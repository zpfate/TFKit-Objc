//
//  UILabel+TFKit.m
//  TFKit-Objc
//
//  Created by Twisted Fate on 2020/7/27.
//  Copyright © 2020 Twisted Fate. All rights reserved.
//

#import "UILabel+TFKit.h"

@implementation UILabel (TFKit)

+ (UILabel *)tf_labelWithFrame:(CGRect)frame fontSize:(CGFloat)fontSize textColor:(UIColor *)textColor text:(NSString *)text {
    
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    label.font = [UIFont systemFontOfSize:fontSize];
    label.textColor = textColor;
    label.text = text;
    return label;
}

@end
