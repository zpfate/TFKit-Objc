//
//  NSData+TFKit.h
//  TFKit-OC
//
//  Created by Twisted Fate on 2019/6/19.
//  Copyright © 2019 TwistedFate. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSData (TFKit)

@end

@interface NSData (AES128)


///  AES128加密
/// @param key 秘钥
/// @param iv iv向量
- (NSData *)tf_encryptAES128WithKey:(NSString *)key iv:(NSString *)iv;

/// AES128解密
/// @param key 秘钥
/// @param iv iv向量
- (NSData *)tf_decryptAES128WithKey:(NSString *)key iv:(NSString *)iv;

///  AES128加密
/// @param keyData 秘钥
/// @param ivData iv向量
- (NSData *)tf_encryptAES128WithKeyData:(NSData *)keyData ivData:(NSData *)ivData;

/// AES128解密
/// @param keyData 秘钥
/// @param ivData iv向量
- (NSData *)tf_decryptAES128WithKeyData:(NSData *)keyData ivData:(NSData *)ivData;

@end

@interface NSData (PRF)

/// PRF算法
/// @param secret 加密二进制
/// @param label 文本
/// @param seed 种子
+ (NSData *)tf_prfSecret:(NSData *)secret label:(NSData *)label seed:(NSData *)seed;

@end


@interface NSData (HMAC)


/// Hmac SHA256签名
/// @param secret 加密秘钥
/// @param content 加密内容
+ (NSData *)tf_hmacSHA256WithSecret:(NSData *)secret content:(NSData *)content;


/// SHA256签名
/// @param encryptData 签名二进制文件
+ (NSData *)tf_SHA256:(NSData *)encryptData;

@end

NS_ASSUME_NONNULL_END
