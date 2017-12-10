//
//  AbstractFactory.m
//  DesignPattern
//
//  Created by 祝小夏 on 2017/12/9.
//  Copyright © 2017年 bluetown. All rights reserved.
//

#import "AbstractFactory.h"

@implementation AbstractFactory

- (__kindof id<Color>)getColorWithSting:(NSString *)string {
    return nil;
}

- (__kindof id<Shape>)getShapeWithString:(NSString *)string {
    return nil;
}
@end
