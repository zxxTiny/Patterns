//
//  ChickenBurger.m
//  DesignPattern
//
//  Created by 祝小夏 on 2017/12/10.
//  Copyright © 2017年 bluetown. All rights reserved.
//

#import "ChickenBurger.h"

@implementation ChickenBurger
- (float)price {
    return 21.0f;
}

- (NSString *)name {
    return @"Chicken Burger";
}

- (id<Packing>)getPacking {
    return [[Wrapper alloc]init];
}
@end
