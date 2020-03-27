//
//  HandlerEmail.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/27.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "HandlerEmail.h"
#import "RegExCategories.h"

@interface HandlerEmail ()

@property (nonatomic, strong) id<MAUserProtocol> nextSucccessor;

@end

@implementation HandlerEmail

- (void)handlerRequest:(id)request{
    NSString *string = request;
    
    BOOL isMatch =[string isMatch:RX(@"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}")];
    
    if (isMatch == NO) {
        [self.nextSucccessor handlerRequest:string];
        
    } else {
        NSLog(@"%@ 是邮箱",string);
    }
}

- (void)setSuccessor:(id<MAUserProtocol>)successor{
    self.nextSucccessor = successor;
}

- (id<MAUserProtocol>)successor{
    return self.nextSucccessor;
}

@end
