//
//  MAAppleTV.m
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/20.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import "MAAppleTV.h"

@implementation MAAppleTV

- (void)loadCommand:(NSString *)command{
    if ([command isEqualToString:@"up"]) {
        NSLog(@"您按的是Apple:----%@",command);
    }
    else if ([command isEqualToString:@"down"]){
        NSLog(@"您按的是Apple:----%@",command);
    }
    else if ([command isEqualToString:@"left"]){
        NSLog(@"您按的是Apple:----%@",command);
    }
    else if ([command isEqualToString:@"right"]){
        NSLog(@"您按的是Apple:----%@",command);
    }
    else {
        NSLog(@"超出范围");
    }
}

@end
