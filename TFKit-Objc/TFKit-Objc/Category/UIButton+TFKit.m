//
//  UIButton+TFKit.m
//  TFKit-Objc
//
//  Created by Twisted Fate on 2020/4/28.
//  Copyright © 2020 Twisted Fate. All rights reserved.
//

#import "UIButton+TFKit.h"
#import <objc/runtime.h>
@implementation UIButton (TFKit)

- (void)setClickAction:(TFClickAction)clickAction {
    objc_setAssociatedObject(self, @selector(setClickAction:), clickAction, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (TFClickAction)clickAction {
    return objc_getAssociatedObject(self, @selector(setClickAction:));
}

+ (UIButton *)tf_buttonWithFrame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titleColor font:(UIFont *)font clickAction:(TFClickAction)clickAction {
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:titleColor forState:UIControlStateNormal];
    btn.titleLabel.font = font;
    [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    return btn;
}

+ (UIButton *)tf_buttonWithFrame:(CGRect)frame imageName:(NSString *)imageName selectImageName:(NSString *)selectImageName clickAction:(TFClickAction)clickAction {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:selectImageName] forState:UIControlStateSelected];
    [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    return btn;
}

- (void)click:(UIButton *)sender {
    
}

@end
