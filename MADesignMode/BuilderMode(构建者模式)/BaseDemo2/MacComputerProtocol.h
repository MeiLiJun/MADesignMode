//
//  MacComputerProtocol.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/4.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol MacComputerProtocol <NSObject>

//cpu
- (void)cpu:(NSString *)cup;

//显卡
- (void)display:(NSString *)display;

//主板
- (void)mainboard:(NSString *)mainboard;

//系统
- (void)os :(NSString *)os;

@end

NS_ASSUME_NONNULL_END
