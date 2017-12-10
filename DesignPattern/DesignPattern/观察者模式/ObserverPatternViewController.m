//
//  ObserverPatternViewController.m
//  DesignPattern
//
//  Created by 祝小夏 on 2017/12/10.
//  Copyright © 2017年 bluetown. All rights reserved.
//

#import "ObserverPatternViewController.h"
#import "BinaryObserver.h"
#import "OctalObserver.h"
#import "HexaObserver.h"
#import "Subject.h"

@interface ObserverPatternViewController ()

@end

@implementation ObserverPatternViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Subject *subject = [[Subject alloc]init];
    
    BinaryObserver *binary = [[BinaryObserver alloc]initWithSubject:subject];
    OctalObserver *octal = [[OctalObserver alloc]initWithSubject:subject];
    HexaObserver *hexa = [[HexaObserver alloc]initWithSubject:subject];
    
    [subject attach:binary];
    [subject attach:octal];
    [subject attach:hexa];
    
    subject.state = 1234;
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
