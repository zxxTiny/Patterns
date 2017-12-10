//
//  MealBuilder.h
//  DesignPattern
//
//  Created by 祝小夏 on 2017/12/10.
//  Copyright © 2017年 bluetown. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Meal.h"

@interface MealBuilder : NSObject
//创建套餐1
+ (Meal *)createMealOne;

//创建套餐2
+ (Meal *)createMealTwo;

@end
