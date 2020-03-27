//
//  MacDirector.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/4.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MacBuilder.h"

NS_ASSUME_NONNULL_BEGIN

//组装
@interface MacDirector : NSObject

- (instancetype)initWithBuilder:(id<MacBuilder>)builder;

- (void)constructCpu:(NSString *)cpu display:(NSString *)display mainBoard:(NSString *)mainboard os:(NSString *)os;

@end

NS_ASSUME_NONNULL_END
