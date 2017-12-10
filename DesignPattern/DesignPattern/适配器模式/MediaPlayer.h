//
//  MediaPlayer.h
//  DesignPattern
//
//  Created by 祝小夏 on 2017/12/10.
//  Copyright © 2017年 bluetown. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MediaPlayer <NSObject>
- (void)playWithAudioType:(NSString *)audioType fileName:(NSString *)fileName;
@end
