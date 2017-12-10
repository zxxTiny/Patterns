//
//  VegBurger.m
//  DesignPattern
//
//  Created by 祝小夏 on 2017/12/10.
//  Copyright © 2017年 bluetown. All rights reserved.
//

#import "VegBurger.h"

@implementation VegBurger

- (float)price {
    return 11.0f;
}

- (NSString *)name {
    return @"veg Burger";
}

- (id<Packing>)getPacking {
    return [[Wrapper alloc]init];
}

@end
