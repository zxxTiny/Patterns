//
//  Subject.m
//  DesignPattern
//
//  Created by 祝小夏 on 2017/12/10.
//  Copyright © 2017年 bluetown. All rights reserved.
//

#import "Subject.h"
#import "Observer.h"

@interface Subject ()
@property (nonatomic, strong) NSMutableArray *observers;
@end
@implementation Subject

- (NSMutableArray *)observers {
    if (_observers == nil) {
        _observers = [[NSMutableArray alloc]init];
    }
    return _observers;
}

- (void)setState:(NSInteger)state {
    _state = state;
    [self notifyAllObservers];
}

- (void)attach:(Observer *)observer {
    [self.observers addObject:observer];
}

- (void)notifyAllObservers {
    for (Observer *observer in self.observers) {
        [observer update];
    }
}

@end
