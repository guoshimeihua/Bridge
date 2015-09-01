//
//  TVProtocol.h
//  Bridge
//
//  Created by Bruce on 15/9/1.
//  Copyright (c) 2015年 Bruce. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TVProtocol <NSObject>

@required

- (void)switchChannel; // 切换频道

- (void)adjustVolume;  // 调节音量

- (void)powerSwitch;   // 电源开关

@end
