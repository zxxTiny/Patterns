//
//  Coke.m
//  DesignPattern
//
//  Created by 祝小夏 on 2017/12/10.
//  Copyright © 2017年 bluetown. All rights reserved.
//

#import "Coke.h"

@implementation Coke

- (NSString *)name {
    return @"coke";
}

- (float)price {
    return 6.4f;
}

- (id<Packing>)getPacking {
    return [[Bottle alloc]init];
}

@end
