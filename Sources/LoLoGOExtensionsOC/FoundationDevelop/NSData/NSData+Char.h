//
//  NSData+Char.h
//  
//
//  Created by linqipeng on 2022/5/11.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSData (Char)
// 转换成大端字节序 - 内部API
+ (unsigned char)hexHighModeFromChar:(unsigned char)tempChar;
// 转换成小端字节序 - 内部API
+ (unsigned char)hexLowModeFromChar:(unsigned char)tempChar;
@end

NS_ASSUME_NONNULL_END