//
//  MAObserverModeController.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/28.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MAObserverModeController.h"
#import "MASubCenter.h"

@interface MAObserverModeController () <SubProtocol>

@end

@implementation MAObserverModeController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    // 创建订阅
    [MASubCenter creatNumber:@"string"];
    
    // 添加订阅
    [MASubCenter addUser:self wihtNumber:@"string"];
    
    // 发送消息
    [MASubCenter sendMessage:@"11" withSubNumber:@"string"];
}

#pragma mark - Protocol
- (void)subMessage:(id)message withSubNumber:(NSString *)withSubNumber{
    NSLog(@"----%@----%@",message, withSubNumber);
}

@end
