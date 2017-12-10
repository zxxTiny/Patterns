//
//  SingletonViewController.m
//  DesignPattern
//
//  Created by 祝小夏 on 2017/12/9.
//  Copyright © 2017年 bluetown. All rights reserved.
//

#import "SingletonViewController.h"
#import "User.h"
@interface SingletonViewController ()

@end

@implementation SingletonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    User *user = [User sharedInstance];
    user.name = @"祝小龙";
    user.sex = @"男";
    user.age = 27;
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 100, CGRectGetWidth(self.view.frame), 20)];
    label.text = [NSString stringWithFormat:@"%@， %@， %li岁",[User sharedInstance].name,[User sharedInstance].sex,[User sharedInstance].age];
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
