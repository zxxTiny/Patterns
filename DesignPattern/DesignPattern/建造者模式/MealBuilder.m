//
//  MealBuilder.m
//  DesignPattern
//
//  Created by 祝小夏 on 2017/12/10.
//  Copyright © 2017年 bluetown. All rights reserved.
//

#import "MealBuilder.h"

@implementation MealBuilder
//创建套餐1
+ (Meal *)createMealOne {
    Meal *meal = [[Meal alloc]init];
    VegBurger *burger = [[VegBurger alloc]init];
    Coke *drink = [[Coke alloc]init];
    [meal addItem:burger];
    [meal addItem:drink];
    return meal;
}

//创建套餐2
+ (Meal *)createMealTwo {
    Meal *meal = [[Meal alloc]init];
    ChickenBurger *burger = [[ChickenBurger alloc]init];
    Pepsi *drink = [[Pepsi alloc]init];
    [meal addItem:burger];
    [meal addItem:drink];
    return meal;
}
@end
