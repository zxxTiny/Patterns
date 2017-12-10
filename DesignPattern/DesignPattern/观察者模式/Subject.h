//
//  Subject.h
//  DesignPattern
//
//  Created by 祝小夏 on 2017/12/10.
//  Copyright © 2017年 bluetown. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Observer;
@interface Subject : NSObject
@property (nonatomic, assign) NSInteger state;

- (void)attach:(Observer *)observer;

@end
