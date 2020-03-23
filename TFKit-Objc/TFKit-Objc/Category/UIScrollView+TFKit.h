//
//  UIScrollView+TFKit.h
//  TFKit-Objc
//
//  Created by Twisted Fate on 2020/3/23.
//  Copyright © 2020 Twisted Fate. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIScrollView (TFKit)

@end


@interface UITableViewCell (TFKit)

/// cell重新标识符
+ (NSString *)tf_cellIdentifier;

@end

@interface UICollectionViewCell (TFKit)

/// cell重新标识符
+ (NSString *)tf_cellIdentifier;

@end


NS_ASSUME_NONNULL_END
