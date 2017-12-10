//
//  AbstractFactory.h
//  DesignPattern
//
//  Created by 祝小夏 on 2017/12/9.
//  Copyright © 2017年 bluetown. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Shape.h"
#import "Color.h"

@interface AbstractFactory : NSObject

- (__kindof id<Color>)getColorWithSting:(NSString *)string;

- (__kindof id<Shape>)getShapeWithString:(NSString *)string;

@end
