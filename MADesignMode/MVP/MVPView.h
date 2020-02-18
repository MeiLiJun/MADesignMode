//
//  MVPView.h
//  MADesignMode
//
//  Created by MeiLiJun on 2020/2/16.
//  Copyright © 2020年 MeiLj. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol MVPDelegate <NSObject>

- (void)viewShowBtnClick;

@end

@interface MVPView : UIView
    
@property (nonatomic, weak)id<MVPDelegate> delegate;
    
- (void)showView:(NSString *)content;

@end

NS_ASSUME_NONNULL_END
