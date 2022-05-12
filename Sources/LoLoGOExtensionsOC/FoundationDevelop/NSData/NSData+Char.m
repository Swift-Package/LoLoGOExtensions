//
//  NSData+Char.m
//  
//
//  Created by linqipeng on 2022/5/11.
//

#import "NSData+Char.h"

@implementation NSData (Char)
// 反转字节序列代码
+ (NSData *)dataWithReverse:(NSData *)srcData
{
    NSUInteger byteCount = srcData.length;
    NSMutableData *dstData = [[NSMutableData alloc] initWithData:srcData];
    NSUInteger halfLength = byteCount / 2;
    for (NSUInteger i=0; i<halfLength; i++) {
        NSRange begin = NSMakeRange(i, 1);
        NSRange end = NSMakeRange(byteCount - i - 1, 1);
        NSData *beginData = [srcData subdataWithRange:begin];
        NSData *endData = [srcData subdataWithRange:end];
        [dstData replaceBytesInRange:begin withBytes:endData.bytes];
        [dstData replaceBytesInRange:end withBytes:beginData.bytes];
    }
    
    return dstData;
}

// 转换成大端字节序 - 内部API
+ (unsigned char)hexHighModeFromChar:(unsigned char)tempChar {
    unsigned char temp = 0x00;
    switch (tempChar) {
        case 'a':temp = 0xa0;break;
        case 'A':temp = 0xA0;break;
        case 'b':temp = 0xb0;break;
        case 'B':temp = 0xB0;break;
        case 'c':temp = 0xc0;break;
        case 'C':temp = 0xC0;break;
        case 'd':temp = 0xd0;break;
        case 'D':temp = 0xD0;break;
        case 'e':temp = 0xe0;break;
        case 'E':temp = 0xE0;break;
        case 'f':temp = 0xf0;break;
        case 'F':temp = 0xF0;break;
        case '1':temp = 0x10;break;
        case '2':temp = 0x20;break;
        case '3':temp = 0x30;break;
        case '4':temp = 0x40;break;
        case '5':temp = 0x50;break;
        case '6':temp = 0x60;break;
        case '7':temp = 0x70;break;
        case '8':temp = 0x80;break;
        case '9':temp = 0x90;break;
        default: temp = 0x00;break;
    }
    return temp;
}

// 转换成小端字节序 - 内部API
+ (unsigned char)hexLowModeFromChar:(unsigned char)tempChar {
    unsigned char temp = 0x00;
    switch (tempChar) {
            case 'a':temp = 0x0a;break;
            case 'A':temp = 0x0A;break;
            case 'b':temp = 0x0b;break;
            case 'B':temp = 0x0B;break;
            case 'c':temp = 0x0c;break;
            case 'C':temp = 0x0C;break;
            case 'd':temp = 0x0d;break;
            case 'D':temp = 0x0D;break;
            case 'e':temp = 0x0e;break;
            case 'E':temp = 0x0E;break;
            case 'f':temp = 0x0f;break;
            case 'F':temp = 0x0F;break;
            case '1':temp = 0x01;break;
            case '2':temp = 0x02;break;
            case '3':temp = 0x03;break;
            case '4':temp = 0x04;break;
            case '5':temp = 0x05;break;
            case '6':temp = 0x06;break;
            case '7':temp = 0x07;break;
            case '8':temp = 0x08;break;
            case '9':temp = 0x09;break;
            default: temp = 0x00;break;
            }
    return temp;
}


@end
