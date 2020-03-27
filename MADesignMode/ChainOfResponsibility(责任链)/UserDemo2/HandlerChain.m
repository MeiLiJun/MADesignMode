//
//  HandlerChain.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/27.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "HandlerChain.h"

@interface HandlerChain ()

@property (nonatomic, strong) id<MAUserProtocol> nextSucccessor;

@end

@implementation HandlerChain

- (void)handlerRequest:(id)request{
    [self.nextSucccessor handlerRequest:request];
}

- (void)setSuccessor:(id<MAUserProtocol>)successor{
    self.nextSucccessor = successor;
}

- (id<MAUserProtocol>)successor{
    return self.nextSucccessor;
}

@end
