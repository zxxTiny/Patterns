//
//  User.m
//  DesignPattern
//
//  Created by 祝小夏 on 2017/12/9.
//  Copyright © 2017年 bluetown. All rights reserved.
//

#import "User.h"

@implementation User

+ (instancetype)sharedInstance {
    static User *instance = nil;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        instance = [[User alloc]init];
    });
    return instance;
}

@end
