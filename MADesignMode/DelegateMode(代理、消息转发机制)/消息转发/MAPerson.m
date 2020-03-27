//
//  MAPerson.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/4.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MAPerson.h"
#import <objc/runtime.h>
#import "Animation.h"

/*
 // 动态方法解析
 + (BOOL)resolveClassMethod:(SEL)sel OBJC_AVAILABLE(10.5, 2.0, 9.0, 1.0);
 + (BOOL)resolveInstanceMethod:(SEL)sel OBJC_AVAILABLE(10.5, 2.0, 9.0, 1.0);
 
 // 消息转发
 - (id)forwardingTargetForSelector:(SEL)aSelector OBJC_AVAILABLE(10.5, 2.0, 9.0, 1.0);
 
 // 标准的消息转发
 - (void)forwardInvocation:(NSInvocation *)anInvocation OBJC_SWIFT_UNAVAILABLE("");
 
 - (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector OBJC_SWIFT_UNAVAILABLE("");

 */

@implementation MAPerson


// 1.动态方法
+ (BOOL)resolveInstanceMethod:(SEL)sel{
    NSLog(@"1.sel = %@", NSStringFromSelector(sel));
    
//    // 1.判断没实现方法, 就动态添加方法
//    if (sel == @selector(run)) {
//        class_addMethod(self, sel, (IMP)newRun, "v@:@");
//        return YES;
//    }
    
    return [super resolveInstanceMethod:sel];
}

void newRun(id self, SEL sel, NSString *str){
    NSLog(@"---run起来了没有 %@--",str);
}

// 二.消息转发重定向
- (id)forwardingTargetForSelector:(SEL)aSelector{
    NSLog(@"2.sel = %@", NSStringFromSelector(aSelector));
    
    return [super forwardingTargetForSelector:aSelector];
//    return [[Animation alloc] init];
}

// 三. 1. 生成方法签名.
- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector{
    // 1. 转化字符串
    NSString *sel = NSStringFromSelector(aSelector);
    
    // 2.进行判断 手动生成签名
    if ([sel isEqualToString:@"run"]) {
        return [NSMethodSignature signatureWithObjCTypes:"v@:"];
    } else {
        return [super methodSignatureForSelector:aSelector];
    }
}

// 三. 2. 拿到方法签名配发消息
- (void)forwardInvocation:(NSInvocation *)anInvocation{
    NSLog(@"-----%@",anInvocation);
    // 1.拿到这个消息
    SEL selector = [anInvocation selector];
    
    // 2.转发消息.
    Animation *anm = [[Animation alloc] init];
    if ([anm respondsToSelector:selector]) {
        // 调用这个对象,进行转发
        [anInvocation invokeWithTarget:anm];
    } else {
        [super forwardInvocation:anInvocation];
    }
}

// 四.抛出异常
- (void)doesNotRecognizeSelector:(SEL)aSelector{
    // Animation 中 run 方法改名，即可测试
    NSString *selStr = NSStringFromSelector(aSelector);
    NSLog(@"这个-----%@---方法不存在", selStr);
}

@end
