//
//  Meal.m
//  DesignPattern
//
//  Created by 祝小夏 on 2017/12/10.
//  Copyright © 2017年 bluetown. All rights reserved.
//

#import "Meal.h"

@interface Meal ()
@property (nonatomic, strong) NSMutableArray *items;
@end

@implementation Meal

- (NSMutableArray *)items {
    if (_items == nil) {
        _items = [[NSMutableArray alloc]init];
    }
    return _items;
}

- (void)addItem:(id<Item>)item {
    if (item) {
        [self.items addObject:item];
    }
}

- (void)removeItem:(id<Item>)item {
    if (item) {
        [self.items removeObject:item];
    }
}

- (float)getCost {
    float cost = 0;
    for (id<Item> item in self.items) {
        cost += item.price;
    }
    return cost;
}

- (void)showItems {
    for (id<Item> item in self.items) {
        NSLog(@"食物:%@, 包装：%@, 价格%f",item.name,[item getPacking].pack,item.price);
    }
}

@end
