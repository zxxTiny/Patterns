//
//  ShapeFactory.m
//  DesignPattern
//
//  Created by 祝小夏 on 2017/12/9.
//  Copyright © 2017年 bluetown. All rights reserved.
//

#import "ShapeFactory.h"

@implementation ShapeFactory

+ (__kindof id<Shape>)getShapeWithString:(NSString *)string {
    if ([string isEqualToString:@"circle"]) {
        return [[Circle alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    }
    else if ([string isEqualToString:@"square"]) {
        return [[Square alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    }
    else if ([string isEqualToString:@"rectangle"]) {
        return [[Rectangle alloc]initWithFrame:CGRectMake(0, 0, 200, 100)];
    }
    return nil;
}

@end
