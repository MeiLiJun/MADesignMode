//
//  MAUserProtocol.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/27.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol MAUserProtocol <NSObject>

@property (nonatomic, strong) id <MAUserProtocol> successor;

// 处理请求的接口
- (void)handlerRequest:(id)request;

@end

NS_ASSUME_NONNULL_END
