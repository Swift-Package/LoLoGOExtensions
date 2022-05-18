//
//  NSString+Extensions.h
//  
//
//  Created by 杨俊艺 on 2022/5/10.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Extensions)
// NSData转为NSString（非NSUTF8转换）
+ (NSString *)stringFromData:(NSData *)data;

@end

NS_ASSUME_NONNULL_END
