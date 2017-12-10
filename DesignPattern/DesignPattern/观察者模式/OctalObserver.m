//
//  OctalObserver.m
//  DesignPattern
//
//  Created by 祝小夏 on 2017/12/10.
//  Copyright © 2017年 bluetown. All rights reserved.
//

#import "OctalObserver.h"
#import "Subject.h"
@implementation OctalObserver
- (instancetype)initWithSubject:(Subject *)subject {
    self = [super init];
    self.subject = subject;
    return self;
}

- (void)update {
    NSLog(@"OctalObserver: %li",self.subject.state);
}

/**
 十进制转换八进制
 
 @param decimal 十进制数
 @return 八进制数
 */
- (NSString *)getOctalByDecimal:(NSInteger)decimal {
    
    return @"";//TODO
}

@end
