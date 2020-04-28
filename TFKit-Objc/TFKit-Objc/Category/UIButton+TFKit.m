//
//  UIButton+TFKit.m
//  TFKit-Objc
//
//  Created by Twisted Fate on 2020/4/28.
//  Copyright © 2020 Twisted Fate. All rights reserved.
//

#import "UIButton+TFKit.h"
#import <objc/runtime.h>
@interface UIButton ()

@property (nonatomic, copy) TFClickActionBlock clickAction;

@end

@implementation UIButton (TFKit)

+ (UIButton *)tf_buttonWithFrame:(CGRect)frame title:(NSString *)title titleColor:(UIColor *)titleColor font:(UIFont *)font clickAction:(TFClickActionBlock)clickAction {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = frame;
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    button.titleLabel.font = font;
    button.clickAction = clickAction;
    return button;
}

+ (UIButton *)tf_buttonWithFrame:(CGRect)frame imageName:(NSString *)imageName selectImageName:(NSString *)selectImageName clickAction:(TFClickActionBlock)clickAction {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = frame;
    [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:selectImageName] forState:UIControlStateSelected];
    button.clickAction = clickAction;
    return button;
}

- (void)setBackgroundColor:(UIColor *)backgroundColor state:(UIControlState)state {
    
}

- (void)buttonClick:(UIButton *)sender {
    if (sender.clickAction) {
        sender.clickAction();
    }
}

#pragma mark -- 关联属性

- (TFClickActionBlock)clickAction {
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setClickAction:(TFClickActionBlock)clickAction {
    [self addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    objc_setAssociatedObject(self, @selector(clickAction), clickAction, OBJC_ASSOCIATION_COPY_NONATOMIC);
}


@end
