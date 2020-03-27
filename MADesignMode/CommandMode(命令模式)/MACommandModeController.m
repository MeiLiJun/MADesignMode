//
//  MACommandModeController.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/27.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MACommandModeController.h"
#import "CommandReceiver.h"
#import "DarkerCommand.h"
#import "LighterCommand.h"

#import "Invoker.h"


//
#import "StudentModel.h"
#import "ClassModel.h"

typedef enum : NSUInteger{
    kMinusBtnTag = 100,  // 降低亮度
    kAddBtnTag   = 101,  // 增加亮度
    kBackBtnTag  = 102,  // 回退亮度
    kCopyBtnTag  = 110,  // CopyingDemo
} BtnTag;

@interface MACommandModeController ()

@property (nonatomic, strong) CommandReceiver *receiver;

@end

@implementation MACommandModeController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 接收器
    self.receiver = [[CommandReceiver alloc] init];
    self.receiver.receiverView = self.view;
    
}


- (IBAction)btnActon:(UIButton *)sender {
    if (sender.tag == kMinusBtnTag) {
        // 变暗
        // 带回退功能调用方式
        DarkerCommand *command = [[DarkerCommand alloc] initWithReceiver:self.receiver paramter:0.1];
        [[Invoker sharedInstance] addAndExcute:command];
        
//        不带回退功能调用方式
//        [self.receiver mackeDarker:0.1];
    } else if (sender.tag == kAddBtnTag){
        // 变亮
        LighterCommand *command = [[LighterCommand alloc] initWithReceiver:self.receiver paramter:0.1];
        [[Invoker sharedInstance] addAndExcute:command];
        
//        [self.receiver mackeLighter:0.1];
    } else if (sender.tag == kBackBtnTag){
        // 回退操作
        [[Invoker sharedInstance] goBack];
    } else if (sender.tag == kCopyBtnTag) {
        /// NSCopyingDemo Test
        [self copyDemoTest];
    }
}


- (void)copyDemoTest{
    StudentModel *stu1 = [StudentModel new];
    stu1.name = @"张三";
    
    StudentModel *stu2 = stu1.copy;
    
    // classModel
    ClassModel *class1 = [[ClassModel alloc] init];
    class1.className = @"ban ji 1";
    class1.students = @[stu1, stu2];
    
    ClassModel *class2 = class1.copy;
    NSLog(@"%@ ----%@", class1, class2);
    
    NSLog(@"%@", class1.students);
    NSLog(@"%@", class2.students);
}

@end
