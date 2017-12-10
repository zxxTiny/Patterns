//
//  HexaObserver.m
//  DesignPattern
//
//  Created by 祝小夏 on 2017/12/10.
//  Copyright © 2017年 bluetown. All rights reserved.
//

#import "HexaObserver.h"
#import "Subject.h"
@implementation HexaObserver
- (instancetype)initWithSubject:(Subject *)subject {
    self = [super init];
    self.subject = subject;
    return self;
}

- (void)update {
    NSString *string = [self getHexByDecimal:self.subject.state];
    NSLog(@"HexaObserver: %@",string);
}

/**
 十进制转换十六进制
 
 @param decimal 十进制数
 @return 十六进制数
 */
- (NSString *)getHexByDecimal:(NSInteger)decimal {
    
    NSString *hex =@"";
    NSString *letter;
    NSInteger number;
    for (int i = 0; i<9; i++) {
        
        number = decimal % 16;
        decimal = decimal / 16;
        switch (number) {
                
            case 10:
                letter =@"A"; break;
            case 11:
                letter =@"B"; break;
            case 12:
                letter =@"C"; break;
            case 13:
                letter =@"D"; break;
            case 14:
                letter =@"E"; break;
            case 15:
                letter =@"F"; break;
            default:
                letter = [NSString stringWithFormat:@"%ld", number];
        }
        hex = [letter stringByAppendingString:hex];
        if (decimal == 0) {
            
            break;
        }
    }
    return hex;
}

@end
