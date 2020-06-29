//
//  UIDevice+TFKit.m
//  AnalysisAFNetworking
//
//  Created by Twisted Fate on 2018/12/19.
//  Copyright © 2018 TwistedFate. All rights reserved.
//

#import "UIDevice+TFKit.h"

@implementation UIDevice (TFKit)

+ (BOOL)tf_isiPhoneX {
    CGFloat bottom = 0;
    if (@available(iOS 11.0, *)) {
        bottom =  [[UIApplication sharedApplication] delegate].window.safeAreaInsets.bottom;
    }
    BOOL isPhoneX = bottom > 0 ? YES : NO;
    return isPhoneX;
}

+ (void)tf_setOrientation:(UIInterfaceOrientation)orientation {
    if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
        SEL selector = NSSelectorFromString(@"setOrientation:");
        NSInvocation* invocation = [NSInvocation invocationWithMethodSignature:[UIDevice instanceMethodSignatureForSelector:selector]];
        [invocation setSelector:selector];
        [invocation setTarget:[UIDevice currentDevice]];
        [invocation setArgument:&orientation atIndex:2];
        [invocation invoke];
    }
}

+ (void)tf_setRotateToSatusBarOrientation {
    UIInterfaceOrientation deviceOri = (UIInterfaceOrientation)[UIDevice currentDevice].orientation;
    UIInterfaceOrientation statusBarOri = [UIApplication sharedApplication].statusBarOrientation;
    if (UIInterfaceOrientationIsLandscape(statusBarOri)) {
        //解锁后,可能会导致设备方向与状态栏方向不一致,强制先让设备旋转到状态栏方向
        if (statusBarOri != deviceOri) {
            [self tf_setOrientation:[UIApplication sharedApplication].statusBarOrientation];
        }
        
        [self tf_setOrientation:UIInterfaceOrientationPortrait];
    }
    else {
        [self tf_setOrientation:UIInterfaceOrientationLandscapeLeft];
    }
}
@end
