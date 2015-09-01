//
//  ViewController.m
//  Bridge
//
//  Created by Bruce on 15/9/1.
//  Copyright (c) 2015年 Bruce. All rights reserved.
//

#import "ViewController.h"
#import "AbstractRemoteControl.h"
#import "ConcreteRemoteControl.h"
#import "TVProtocol.h"
#import "AbstractTV.h"
#import "TVA.h"
#import "TVB.h"

typedef id<TVProtocol> TVProtocol; //在这里要进行一下转换声明,否则类中不能识别TVProtocol.

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    AbstractRemoteControl *remoteControl = [[ConcreteRemoteControl alloc] init];
    TVProtocol tvProtocol = [[TVA alloc] init];
    remoteControl.tvProtocol = tvProtocol;
    
    [remoteControl detectTVFunction];
    
    NSLog(@"///////////////////////////////");
    
    tvProtocol = [[TVB alloc] init];
    remoteControl.tvProtocol = tvProtocol;
    [remoteControl detectTVFunction];
    
    /**
     *  桥接模式：将抽象部分与它的实现部分分离，使它们都可以独立地变化。
     *  在本例中，AbstractRemoteControl是抽象部分，TVProtocol是其实现部分。
     *  抽象部分与实现部分通过detectTVFunction方法来连接。
     */
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
