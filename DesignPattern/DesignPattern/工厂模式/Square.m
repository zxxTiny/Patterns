//
//  Square.m
//  DesignPattern
//
//  Created by 祝小夏 on 2017/12/9.
//  Copyright © 2017年 bluetown. All rights reserved.
//

#import "Square.h"

@implementation Square

- (void)draw {
    self.layer.borderColor = [UIColor blackColor].CGColor;
    self.layer.borderWidth = 1;
    NSLog(@"This is a square...");
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
