//
//  ShapeFactory.h
//  DesignPattern
//
//  Created by 祝小夏 on 2017/12/9.
//  Copyright © 2017年 bluetown. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Circle.h"
#import "Square.h"
#import "Rectangle.h"

@interface ShapeFactory : NSObject

+ (__kindof id<Shape>)getShapeWithString:(NSString *)string;

@end
