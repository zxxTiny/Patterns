//
//  MediaAdapter.h
//  DesignPattern
//
//  Created by 祝小夏 on 2017/12/10.
//  Copyright © 2017年 bluetown. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MediaPlayer.h"
#import "VlcPlayer.h"
#import "Mp4Player.h"

@interface MediaAdapter : NSObject<MediaPlayer>

- (instancetype)initWithAudioType:(NSString *)audioType;

@end
