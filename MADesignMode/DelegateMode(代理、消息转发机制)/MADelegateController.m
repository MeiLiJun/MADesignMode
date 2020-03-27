//
//  MADelegateController.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/4.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MADelegateController.h"
#import "MAPerson.h"

#import "ContentProxy.h"

@interface MADelegateController ()<MessagesProtocol>

@end

@implementation MADelegateController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    MAPerson *per = [[MAPerson alloc] init];
    [per run];
    
    
    
    //了解
    [self testProxy];
}

- (void)testProxy{
    ContentProxy *proxy = [ContentProxy alloc];
    proxy.delegate = self;
    
    [proxy helloWorld];
}

- (void)helloWorld {
    NSLog(@"---ceshi----");
}

@end
