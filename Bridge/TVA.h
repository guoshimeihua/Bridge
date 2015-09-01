//
//  TVA.h
//  Bridge
//
//  Created by Bruce on 15/9/1.
//  Copyright (c) 2015年 Bruce. All rights reserved.
//

#import "AbstractTV.h"

@interface TVA : AbstractTV

// 重写这三个方法
- (void)switchChannel;
- (void)adjustVolume;
- (void)powerSwitch;

@end
