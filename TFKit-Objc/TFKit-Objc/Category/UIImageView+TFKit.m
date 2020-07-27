//
//  UIImageView+TFKit.m
//  TFKit-Objc
//
//  Created by Twisted Fate on 2020/7/27.
//  Copyright © 2020 Twisted Fate. All rights reserved.
//

#import "UIImageView+TFKit.h"

@implementation UIImageView (TFKit)

+ (UIImageView *)tf_imageViewWithFrame:(CGRect)frame imageName:(NSString *)name {
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:frame];
    imageView.image = [UIImage imageNamed:name];
    return imageView;
}

@end
