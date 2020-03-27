//
//  ResponsibilityViewController.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/27.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "ResponsibilityViewController.h"

// GameDemo1
#import "DefenseBase.h"
#import "MagicDefense.h"
#import "PhysicalDefense.h"
#import "PassiveDefense.h"

#import "AttackBase.h"
#import "MagicAttack.h"
#import "PhysicalAttack.h"
#import "PassiveAttack.h"

// UserDemo2
#import "HandlerChain.h"
#import "HandlerPhoneNum.h"
#import "HandlerEmail.h"
#import "HandlerUserName.h"


@interface ResponsibilityViewController ()

@end

@implementation ResponsibilityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];

    [self testGameDemo1];
    [self testUserDemo];
}

- (void)testUserDemo{
    // 1.创建责任对象
    HandlerChain *handler = [[HandlerChain alloc] init];
    HandlerPhoneNum *phoneNum = [[HandlerPhoneNum alloc] init];
    HandlerEmail *email = [[HandlerEmail alloc] init];
    HandlerUserName *userName = [[HandlerUserName alloc] init];
    
    // 2.链接责任链对象
    handler.successor = phoneNum;
    phoneNum.successor = email;
    email.successor = userName;
    
    // 3. 处理请求
    [handler handlerRequest:@"13567867890"];
    [handler handlerRequest:@"Tanzhou@sina.cn"];
    [handler handlerRequest:@"ZhangSan"];
}

- (void)testGameDemo1{
    //1. 创建被动防御
    DefenseBase *defense = [[PassiveDefense alloc] init];
    //2.魔法防御
    DefenseBase *magic = [[MagicDefense alloc] init];
    magic.nextHandler = defense;
    //3.物理防御
    DefenseBase *physical = [[PhysicalDefense alloc] init];
    physical.nextHandler = magic;
    
    
    //1,魔法攻击
    AttackBase *magicAttack = [[MagicAttack alloc] init];
    [physical handleRequest:magicAttack];
    
    //2,物理攻击
    AttackBase *phyAttack = [[PhysicalAttack alloc] init];
    [physical handleRequest:phyAttack];
    
    //3,
    AttackBase *pasAttack = [[PassiveAttack alloc] init];
    [physical handleRequest:pasAttack];
}


@end
