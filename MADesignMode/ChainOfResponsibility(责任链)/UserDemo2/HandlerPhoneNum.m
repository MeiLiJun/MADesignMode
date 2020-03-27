//
//  HandlerPhoneNum.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/3/27.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "HandlerPhoneNum.h"
#import "RegExCategories.h"

@interface HandlerPhoneNum ()

@property (nonatomic, strong) id<MAUserProtocol> nextSucccessor;

@end

@implementation HandlerPhoneNum

- (void)handlerRequest:(id)request{
    NSString *string = request;
    
    BOOL isMatch =[string isMatch:RX(@"^((13[0-9])|(15[^4,\\D])|(18[0,0-9]))\\d{8}$")];
    
    if (isMatch == NO) {
        [self.nextSucccessor handlerRequest:string];
        
    } else {
        NSLog(@"%@ 是电话号码",string);
    }
}

- (void)setSuccessor:(id<MAUserProtocol>)successor{
    self.nextSucccessor = successor;
}

- (id<MAUserProtocol>)successor{
    return self.nextSucccessor;
}

@end
