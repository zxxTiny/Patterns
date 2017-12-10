//
//  BuilderPatternViewController.m
//  DesignPattern
//
//  Created by 祝小夏 on 2017/12/10.
//  Copyright © 2017年 bluetown. All rights reserved.
//

#import "BuilderPatternViewController.h"
#import "MealBuilder.h"

@interface BuilderPatternViewController ()

@end

@implementation BuilderPatternViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Meal *meal1 = [MealBuilder createMealOne];
    [meal1 showItems];
    NSLog(@"总金额：%f",[meal1 getCost]);
   
    Meal *meal2 = [MealBuilder createMealTwo];
    [meal2 showItems];
    NSLog(@"总金额：%f",[meal2 getCost]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
