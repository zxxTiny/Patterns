//
//  AbstractFactoryViewController.m
//  DesignPattern
//
//  Created by 祝小夏 on 2017/12/9.
//  Copyright © 2017年 bluetown. All rights reserved.
//

#import "AbstractFactoryViewController.h"
#import "FactoryProducer.h"

@interface AbstractFactoryViewController ()

@end

@implementation AbstractFactoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    MyShapeFactory *shapeFactory = [FactoryProducer getFactoryWithString:@"shape"];
    
    Circle *circle = [shapeFactory getShapeWithString:@"circle"];
    CGRect rect0 = circle.frame;
    rect0.origin.y = 100 + 20;
    rect0.origin.x = 50;
    circle.frame = rect0;
    [circle draw];
    
    Square *square = [shapeFactory getShapeWithString:@"square"];
    [square draw];
    CGRect rect = square.frame;
    rect.origin.x = 50;
    rect.origin.y = CGRectGetMaxY(circle.frame) + 20;
    square.frame = rect;
    
    Rectangle *rectangle = [shapeFactory getShapeWithString:@"rectangle"];
    [rectangle draw];
    CGRect rect1 = rectangle.frame;
    rect1.origin.y = CGRectGetMaxY(square.frame) + 20;
    rect1.origin.x = 50;
    rectangle.frame = rect1;
    
    MyColorFactory *colorFactory = [FactoryProducer getFactoryWithString:@"color"];
    Red *red = [colorFactory getColorWithSting:@"red"];
    Green *green = [colorFactory getColorWithSting:@"green"];
    Blue *blue = [colorFactory getColorWithSting:@"blue"];
    
    [red fillColorWithView:circle];
    [green fillColorWithView:square];
    [blue fillColorWithView:rectangle];
    
    [self.view addSubview:circle];
    [self.view addSubview:square];
    [self.view addSubview:rectangle];
    
}


@end
