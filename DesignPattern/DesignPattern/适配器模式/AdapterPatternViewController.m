//
//  AdapterPatternViewController.m
//  DesignPattern
//
//  Created by 祝小夏 on 2017/12/10.
//  Copyright © 2017年 bluetown. All rights reserved.
//

#import "AdapterPatternViewController.h"
#import "MediaAdapter.h"

@interface AdapterPatternViewController ()

@end

@implementation AdapterPatternViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    MediaAdapter *vlcPlayer = [[MediaAdapter alloc]initWithAudioType:@"vlc"];
    MediaAdapter *mp4Player = [[MediaAdapter alloc]initWithAudioType:@"mp4"];
    [vlcPlayer playWithAudioType:@"vlc" fileName:@"你算什么男人.vlc"];
    [mp4Player playWithAudioType:@"mp4" fileName:@"男人四十一枝花.mp4"];
    
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
