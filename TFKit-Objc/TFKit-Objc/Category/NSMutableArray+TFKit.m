//
//  NSMutableArray+TFKit.m
//  TFKit-Objc
//
//  Created by Twisted Fate on 2022/3/29.
//  Copyright © 2022 Twisted Fate. All rights reserved.
//

#import "NSMutableArray+TFKit.h"
#import <objc/runtime.h>
@implementation NSMutableArray (TFKit)


+ (void)load {
    // 类簇: NSString NSArray NSDictionary 真实类型是其他类型
    
    Class cls = NSClassFromString(@"__NSArrayM");
    Method method1 = class_getInstanceMethod(cls, @selector(insertObject:atIndex:));
    Method method2 = class_getInstanceMethod(cls, @selector(tf_insertObject:atIndex:));
    method_exchangeImplementations(method1, method2);
}

- (void)tf_insertObject:(id)anObject atIndex:(NSUInteger)index {
    
    if (anObject) {
        [self tf_insertObject:anObject atIndex:index];
    } else {
        NSParameterAssert(anObject != nil);
    }
}
@end
