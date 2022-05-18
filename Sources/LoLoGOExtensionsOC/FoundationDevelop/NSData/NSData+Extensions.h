//
//  NSData+Extensions.h
//  
//
//  Created by linqipeng on 2022/5/18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSData (Extensions)
// 反转字节序列代码
+ (NSData *)dataWithReverse:(NSData *)srcData;
// 转换成大端字节序 - 内部API
+ (unsigned char)hexHighModeFromChar:(unsigned char)tempChar;
// 转换成小端字节序 - 内部API
+ (unsigned char)hexLowModeFromChar:(unsigned char)tempChar;
// NSString转为NSData（非NSUTF8转换）
+ (NSData *)dataFromString:(NSString *)string;
@end

NS_ASSUME_NONNULL_END
