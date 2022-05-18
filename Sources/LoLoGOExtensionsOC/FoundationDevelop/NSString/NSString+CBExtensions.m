//
//  NSString+CBExtensions.m
//  
//
//  Created by linqipeng on 2022/5/18.
//

#import "NSString+CBExtensions.h"

@implementation NSString (CBExtensions)
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
