//
//  BinaryObserver.m
//  DesignPattern
//
//  Created by 祝小夏 on 2017/12/10.
//  Copyright © 2017年 bluetown. All rights reserved.
//

#import "BinaryObserver.h"
#import "Subject.h"

@implementation BinaryObserver

- (instancetype)initWithSubject:(Subject *)subject {
    self = [super init];
    self.subject = subject;
    return self;
}

- (void)update {
    NSString *string = [self getBinaryByDecimal:self.subject.state];
    NSLog(@"BinaryObserver: %@",string);
}

- (NSString *)getBinaryByDecimal:(NSInteger)decimal {
    
    NSString *binary = @"";
    while (decimal) {
        
        binary = [[NSString stringWithFormat:@"%ld", decimal % 2] stringByAppendingString:binary];
        if (decimal / 2 < 1) {
            
            break;
        }
        decimal = decimal / 2 ;
    }
    if (binary.length % 4 != 0) {
        
        NSMutableString *mStr = [[NSMutableString alloc]init];;
        for (int i = 0; i < 4 - binary.length % 4; i++) {
            
            [mStr appendString:@"0"];
        }
        binary = [mStr stringByAppendingString:binary];
    }
    return binary;
}

@end
