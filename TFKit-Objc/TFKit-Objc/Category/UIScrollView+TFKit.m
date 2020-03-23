//
//  UIScrollView+TFKit.m
//  TFKit-Objc
//
//  Created by Twisted Fate on 2020/3/23.
//  Copyright © 2020 Twisted Fate. All rights reserved.
//

#import "UIScrollView+TFKit.h"


@implementation UIScrollView (TFKit)

@end

@implementation UITableViewCell (TFKit)

+ (NSString *)tf_cellIdentifier {
    return NSStringFromClass(self.class);
}

@end


@implementation UICollectionViewCell (TFKit)

+ (NSString *)tf_cellIdentifier {
    return NSStringFromClass(self.class);
}

@end
