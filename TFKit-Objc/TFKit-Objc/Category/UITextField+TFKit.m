//
//  UITextField+TFKit.m
//  TFKit-Objc
//
//  Created by Twisted Fate on 2020/7/27.
//  Copyright © 2020 Twisted Fate. All rights reserved.
//

#import "UITextField+TFKit.h"

@implementation UITextField (TFKit)

+ (UITextField *)tf_textFieldWithFrame:(CGRect)frame fontSize:(CGFloat)fontSize text:(NSString *)text {
    
    UITextField *textField = [[UITextField alloc] initWithFrame:frame];
    textField.font = [UIFont systemFontOfSize:fontSize];
    textField.text = text;
    return textField;
}

@end
