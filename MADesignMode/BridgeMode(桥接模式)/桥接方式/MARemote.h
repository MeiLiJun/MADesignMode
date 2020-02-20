//
//  MARemote.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/19.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MATV.h"

NS_ASSUME_NONNULL_BEGIN

@interface MARemote : NSObject

@property (nonatomic, strong)MATV *tv;

- (void)setCommand:(NSString *)commmand;

@end

NS_ASSUME_NONNULL_END
