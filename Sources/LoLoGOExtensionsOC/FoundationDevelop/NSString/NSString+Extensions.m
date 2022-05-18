//
//  NSString+Extensions.m
//  
//
//  Created by 杨俊艺 on 2022/5/10.
//

#import "NSString+Extensions.h"

@implementation NSString (Extensions)

// NSData转为NSString（非NSUTF8转换）
+ (NSString *)stringFromData:(NSData *)data {
    Byte *bytes = (Byte *)[data bytes];
    NSString *string = @"";
    for (NSInteger i = 0; i<data.length; i++) {
        NSString *newHexStr = [NSString stringWithFormat:@"%x", bytes[i] & 0xff]; //16进制数
        newHexStr = [newHexStr uppercaseString];
        if ([newHexStr length] == 1) {
            newHexStr = [NSString stringWithFormat:@"0%@",newHexStr];
        }
        string = [string stringByAppendingString:newHexStr];
    }
    return string;
}

@end
