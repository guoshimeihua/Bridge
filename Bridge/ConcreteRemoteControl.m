//
//  ConcreteRemoteControl.m
//  Bridge
//
//  Created by Bruce on 15/9/1.
//  Copyright (c) 2015年 Bruce. All rights reserved.
//

#import "ConcreteRemoteControl.h"

@implementation ConcreteRemoteControl

- (void)detectTVFunction {
    [self.tvProtocol switchChannel];
    [self.tvProtocol adjustVolume];
    [self.tvProtocol powerSwitch];
}

@end
