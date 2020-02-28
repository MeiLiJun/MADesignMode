//
//  TargetProtocol.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/28.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol TargetProtocol <NSObject>

- (UIColor *)smallViewColor; /**< 颜色 */

- (NSString *)userName; /**< 用户名 */

- (NSString *)password; /**< 密码 */

@end

NS_ASSUME_NONNULL_END
