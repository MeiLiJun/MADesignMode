//
//  HandlerUserName.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/27.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "HandlerUserName.h"
#import "RegExCategories.h"

@interface HandlerUserName ()

@property (nonatomic, strong) id<MAUserProtocol> nextSucccessor;

@end

@implementation HandlerUserName

- (void)handlerRequest:(id)request{
    NSString *string = request;
    
    BOOL isMatch =[string isMatch:RX(@"^[A-Za-z0-9]{6,20}+$")];
    
    if (isMatch == NO) {
        [self.nextSucccessor handlerRequest:string];
        
    } else {
        NSLog(@"%@ 是用户名",string);
    }
}

- (void)setSuccessor:(id<MAUserProtocol>)successor{
    self.nextSucccessor = successor;
}

- (id<MAUserProtocol>)successor{
    return self.nextSucccessor;
}

@end
