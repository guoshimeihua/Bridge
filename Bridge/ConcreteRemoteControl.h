//
//  ConcreteRemoteControl.h
//  Bridge
//
//  Created by Bruce on 15/9/1.
//  Copyright (c) 2015年 Bruce. All rights reserved.
//

#import "AbstractRemoteControl.h"

@interface ConcreteRemoteControl : AbstractRemoteControl

// 重写该方法
- (void)detectTVFunction;

@end
