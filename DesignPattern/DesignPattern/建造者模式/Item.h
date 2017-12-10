//
//  Item.h
//  DesignPattern
//
//  Created by 祝小夏 on 2017/12/10.
//  Copyright © 2017年 bluetown. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Packing.h"

//食物抽象
@protocol Item <NSObject>

@property (nonatomic, readonly) NSString *name;
@property (nonatomic, readonly) float price;

- (id<Packing>)getPacking;

@end
