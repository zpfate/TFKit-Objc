//
//  NSString+TFKit.m
//  AnalysisAFNetworking
//
//  Created by Twisted Fate on 2018/12/19.
//  Copyright © 2018 TwistedFate. All rights reserved.
//

#import "NSString+TFKit.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (TFKit)

#pragma mark -- NSDate相关操作

static NSDateFormatter *dateFormatter = nil;

+ (NSString *)tf_stringFromDate:(NSDate *)date {
    if (dateFormatter == nil) {
        dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    }
    NSString *string = [dateFormatter stringFromDate:date];
    return string;
}

#pragma mark -- 高度计算相关

- (CGSize)tf_boundingSize:(CGSize)size fontSize:(CGFloat)fontSize {
    
    NSDictionary *attribute = @{NSFontAttributeName : [UIFont systemFontOfSize:fontSize]};
    /**
     *typedef NS_OPTIONS(NSInteger, NSStringDrawingOptions) {
         
         NSStringDrawingUsesLineFragmentOrigin = 1 << 0,
         // 整个文本将以每行组成的矩形为单位计算整个文本的尺寸
         
         NSStringDrawingUsesFontLeading = 1 << 1,
         // 使用字体的行间距来计算文本占用的范围，即每一行的底部到下一行的底部的距离计算
         
         NSStringDrawingUsesDeviceMetrics = 1 << 3,
         // 将文字以图像符号计算文本占用范围，而不是以字符计算。也即是以每一个字体所占用的空间来计算文本范围
         
         NSStringDrawingTruncatesLastVisibleLine
         当文本不能适合的放进指定的边界之内，则自动在最后一行添加省略符号。如果NSStringDrawingUsesLineFragmentOrigin没有设置，则该选项不生效
        }
     */
    CGRect rect = [self boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:attribute context:nil];
    return rect.size;
}

#pragma mark -- MD5
- (NSString *)tf_MD5String {
    
    const char *cstr = [self UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(cstr, (CC_LONG)strlen(cstr), result);
    return [NSString stringWithFormat:
            @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
            result[0], result[1], result[2], result[3],
            result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11],
            result[12], result[13], result[14], result[15]
            ];
}

@end
