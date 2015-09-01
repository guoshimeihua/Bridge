//
//  AbstractRemoteControl.h
//  Bridge
//
//  Created by Bruce on 15/9/1.
//  Copyright (c) 2015年 Bruce. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TVProtocol.h"
@interface AbstractRemoteControl : NSObject

@property (nonatomic, weak) id<TVProtocol> tvProtocol;

- (void)detectTVFunction;

@end
