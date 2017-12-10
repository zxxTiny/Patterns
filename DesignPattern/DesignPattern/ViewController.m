//
//  ViewController.m
//  DesignPattern
//
//  Created by 祝小夏 on 2017/12/9.
//  Copyright © 2017年 bluetown. All rights reserved.
//

#import "ViewController.h"

#define kTitleKey @"titleKey"
#define kClassKey @"classKey"

@interface ViewController ()
@property (nonatomic, strong) NSMutableArray *dataSource;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"设计模式";
    NSArray *array = @[@{kTitleKey:@"工厂模式", kClassKey:@"FactoryPatternViewController"},
                       @{kTitleKey:@"抽象工厂模式", kClassKey:@"AbstractFactoryViewController"},
                       @{kTitleKey:@"创建者模式", kClassKey:@"BuilderPatternViewController"},
                       @{kTitleKey:@"观察者模式", kClassKey:@"ObserverPatternViewController"},
                       @{kTitleKey:@"适配器模式", kClassKey:@"AdapterPatternViewController"},
                       @{kTitleKey:@"单例模式", kClassKey:@"SingletonViewController"}];
    self.dataSource = [[NSMutableArray alloc]initWithArray:array];
    [self.tableView registerClass:UITableViewCell.class forCellReuseIdentifier:@"Cell"];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary *dic = [self.dataSource objectAtIndex:indexPath.row];
    NSString *classString = [dic objectForKey:kClassKey];
    Class class = NSClassFromString(classString);
    if (class) {
        UIViewController *vc = [[class alloc]init];
        NSDictionary *dic = [self.dataSource objectAtIndex:indexPath.row];
        vc.title = dic[kTitleKey];
        vc.view.backgroundColor = [UIColor whiteColor];
        [self.navigationController pushViewController:vc animated:YES];
    }
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    NSDictionary *dic = [self.dataSource objectAtIndex:indexPath.row];
    cell.textLabel.text = dic[kTitleKey];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

@end
