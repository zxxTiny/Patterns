//
//  Meal.h
//  DesignPattern
//
//  Created by 祝小夏 on 2017/12/10.
//  Copyright © 2017年 bluetown. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VegBurger.h"
#import "ChickenBurger.h"
#import "Coke.h"
#import "Pepsi.h"

//一顿餐
@interface Meal : NSObject

@property (nonatomic, strong, readonly) NSMutableArray *items;
//添加食物
- (void)addItem:(id<Item>)item;

//移除食物
- (void)removeItem:(id<Item>)item;

//获取总额
- (float)getCost;

//展示食物清淡
- (void)showItems;

@end
