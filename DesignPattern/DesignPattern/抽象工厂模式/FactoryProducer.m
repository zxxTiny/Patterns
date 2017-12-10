//
//  FactoryProducer.m
//  DesignPattern
//
//  Created by 祝小夏 on 2017/12/9.
//  Copyright © 2017年 bluetown. All rights reserved.
//

#import "FactoryProducer.h"

@implementation FactoryProducer
+ (__kindof AbstractFactory *)getFactoryWithString:(NSString *)string {
    if ([string isEqualToString:@"shape"]) {
        return [[MyShapeFactory alloc]init];
    }
    else if ([string isEqualToString:@"color"]) {
        return [[MyColorFactory alloc]init];
    }
    return nil;
}
@end
