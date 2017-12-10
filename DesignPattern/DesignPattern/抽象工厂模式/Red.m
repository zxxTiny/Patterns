//
//  Red.m
//  DesignPattern
//
//  Created by 祝小夏 on 2017/12/9.
//  Copyright © 2017年 bluetown. All rights reserved.
//

#import "Red.h"

@implementation Red
- (void)fillColorWithView:(UIView *)view {
    view.backgroundColor = [UIColor redColor];
    NSLog(@"fill red color...");
}
@end
