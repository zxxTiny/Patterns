//
//  AdvancedMediaPlayer.h
//  DesignPattern
//
//  Created by 祝小夏 on 2017/12/10.
//  Copyright © 2017年 bluetown. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AdvancedMediaPlayer <NSObject>
- (void)playVlcWithFileName:(NSString *)fileName;
- (void)playMp4WithFileName:(NSString *)fileName;
@end
