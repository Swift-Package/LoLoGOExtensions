//
//  NSString+CBExtensions.h
//  
//
//  Created by linqipeng on 2022/5/18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (CBExtensions)
// NSData转为NSString（非NSUTF8转换）
+ (NSString *)stringFromData:(NSData *)data;
@end

NS_ASSUME_NONNULL_END
