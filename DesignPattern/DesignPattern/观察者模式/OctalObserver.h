//
//  OctalObserver.h
//  DesignPattern
//
//  Created by 祝小夏 on 2017/12/10.
//  Copyright © 2017年 bluetown. All rights reserved.
//

#import "Observer.h"

@interface OctalObserver : Observer
- (instancetype)initWithSubject:(Subject *)subject;
@end
