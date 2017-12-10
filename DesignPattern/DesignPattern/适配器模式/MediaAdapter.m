//
//  MediaAdapter.m
//  DesignPattern
//
//  Created by 祝小夏 on 2017/12/10.
//  Copyright © 2017年 bluetown. All rights reserved.
//

#import "MediaAdapter.h"

@interface MediaAdapter ()
@property (nonatomic, strong) id<AdvancedMediaPlayer>player;
@end

@implementation MediaAdapter
- (instancetype)initWithAudioType:(NSString *)audioType {
    self = [super init];
    if ([audioType isEqualToString:@"vlc"]) {
        self.player = [[VlcPlayer alloc]init];
    }
    else if ([audioType isEqualToString:@"mp4"]) {
        self.player = [[Mp4Player alloc]init];
    }
    
    return self;
}

- (void)playWithAudioType:(NSString *)audioType fileName:(NSString *)fileName; {
    if ([audioType isEqualToString:@"vlc"]) {
        [self.player playVlcWithFileName:fileName];
    }
    else if ([audioType isEqualToString:@"mp4"]) {
        [self.player playMp4WithFileName:fileName];
    }
    else {
        NSLog(@"error audio");
    }
}

@end
