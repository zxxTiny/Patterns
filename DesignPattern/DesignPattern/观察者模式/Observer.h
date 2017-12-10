//
//  Observer.h
//  DesignPattern
//
//  Created by 祝小夏 on 2017/12/10.
//  Copyright © 2017年 bluetown. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Subject;
@interface Observer : NSObject
@property (nonatomic, weak) Subject *subject;
- (void)update;
@end
