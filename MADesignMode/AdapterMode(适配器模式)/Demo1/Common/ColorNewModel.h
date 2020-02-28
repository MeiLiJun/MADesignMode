//
//  ColorNewModel.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/28.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ColorNewModel : NSObject

@property (nonatomic, strong) NSString *smallViewColor; /**< 颜色 */
@property (nonatomic, copy) NSString *userName; /**< 用户名 */
@property (nonatomic, copy) NSString *password; /**< 密码 */

@end

NS_ASSUME_NONNULL_END
