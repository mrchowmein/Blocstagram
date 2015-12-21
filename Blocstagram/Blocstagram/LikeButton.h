//
//  LikeButton.h
//  Blocstagram
//
//  Created by Jason Chan MBP on 12/20/15.
//  Copyright © 2015 Jason Chan. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, LikeState) {
    LikeStateNotLiked             = 0,
    LikeStateLiking               = 1,
    LikeStateLiked                = 2,
    LikeStateUnliking             = 3
};


@interface LikeButton : UIButton

@property (nonatomic, assign) LikeState likeButtonState;

@end
