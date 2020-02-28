//
//  SubProtocol.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/28.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol SubProtocol <NSObject>

- (void)subMessage:(id)message withSubNumber:(NSString *)withSubNumber;

@end

NS_ASSUME_NONNULL_END
