//
//  Burger.m
//  DesignPattern
//
//  Created by 祝小夏 on 2017/12/10.
//  Copyright © 2017年 bluetown. All rights reserved.
//

#import "Burger.h"

@implementation Burger
@synthesize name;
@synthesize price;

- (id<Packing>)getPacking {
    return nil;
}


@end
