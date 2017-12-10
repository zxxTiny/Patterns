//
//  FactoryProducer.h
//  DesignPattern
//
//  Created by 祝小夏 on 2017/12/9.
//  Copyright © 2017年 bluetown. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyShapeFactory.h"
#import "MyColorFactory.h"

@interface FactoryProducer : NSObject

+ (__kindof AbstractFactory *)getFactoryWithString:(NSString *)string;

@end
