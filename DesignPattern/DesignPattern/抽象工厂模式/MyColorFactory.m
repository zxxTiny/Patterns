//
//  MyColorFactory.m
//  DesignPattern
//
//  Created by 祝小夏 on 2017/12/9.
//  Copyright © 2017年 bluetown. All rights reserved.
//

#import "MyColorFactory.h"

@implementation MyColorFactory

- (__kindof id<Color>)getColorWithSting:(NSString *)string {
    if ([string isEqualToString:@"red"]) {
        return [[Red alloc]init];
    }
    else if ([string isEqualToString:@"green"]) {
        return [[Green alloc]init];
    }
    else if ([string isEqualToString:@"blue"]) {
        return [[Blue alloc]init];
    }
    return nil;
}

@end
