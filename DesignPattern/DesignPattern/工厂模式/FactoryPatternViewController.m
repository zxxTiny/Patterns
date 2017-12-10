//
//  FactoryPatternViewController.m
//  DesignPattern
//
//  Created by 祝小夏 on 2017/12/9.
//  Copyright © 2017年 bluetown. All rights reserved.
//

#import "FactoryPatternViewController.h"
#import "ShapeFactory.h"

@interface FactoryPatternViewController ()

@end

@implementation FactoryPatternViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
    Circle *circle = [ShapeFactory getShapeWithString:@"circle"];
    CGRect rect0 = circle.frame;
    rect0.origin.y = 100 + 20;
    rect0.origin.x = 50;
    circle.frame = rect0;
    [circle draw];
    
    
    Square *square = [ShapeFactory getShapeWithString:@"square"];
    [square draw];
    CGRect rect = square.frame;
    rect.origin.x = 50;
    rect.origin.y = CGRectGetMaxY(circle.frame) + 20;
    square.frame = rect;
    
    Rectangle *rectangle = [ShapeFactory getShapeWithString:@"rectangle"];
    [rectangle draw];
    CGRect rect1 = rectangle.frame;
    rect1.origin.y = CGRectGetMaxY(square.frame) + 20;
    rect1.origin.x = 50;
    rectangle.frame = rect1;
    
    [self.view addSubview:circle];
    [self.view addSubview:square];
    [self.view addSubview:rectangle];
}

@end
