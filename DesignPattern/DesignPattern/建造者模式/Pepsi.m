//
//  Pepsi.m
//  DesignPattern
//
//  Created by 祝小夏 on 2017/12/10.
//  Copyright © 2017年 bluetown. All rights reserved.
//

#import "Pepsi.h"

@implementation Pepsi
- (NSString *)name {
    return @"Pepsi";
}

- (float)price {
    return 7.9f;
}

- (id<Packing>)getPacking {
    return [[Bottle alloc]init];
}

@end
