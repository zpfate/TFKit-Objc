//
//  UIImageView+TFKit.m
//  TFKit-Objc
//
//  Created by Twisted Fate on 2020/7/27.
//  Copyright © 2020 Twisted Fate. All rights reserved.
//

#import "UIImageView+TFKit.h"
#import <objc/runtime.h>

@implementation UIImageView (TFKit)

- (void)setClickAction:(TFClickAction)clickAction {
    
    objc_setAssociatedObject(self, @selector(setClickAction:), clickAction, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (TFClickAction)clickAction {
    return objc_getAssociatedObject(self, @selector(setClickAction:));
}

+ (UIImageView *)tf_imageViewWithFrame:(CGRect)frame imageName:(NSString *)name {
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:frame];
    imageView.image = [UIImage imageNamed:name];
    return imageView;
}

- (void)addClickAction:(TFClickAction)clickAction {
    
    self.userInteractionEnabled = YES;
    self.clickAction = clickAction;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(click:)];
    [self addGestureRecognizer:tap];
}

- (void)click:(UITapGestureRecognizer *)tap {
    
    self.clickAction();
}


@end
