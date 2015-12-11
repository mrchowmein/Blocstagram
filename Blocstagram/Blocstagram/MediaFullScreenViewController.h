//
//  MediaFullScreenViewController.h
//  Blocstagram
//
//  Created by Jason Chan MBP on 12/10/15.
//  Copyright © 2015 Jason Chan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Media;

@interface MediaFullScreenViewController : UIViewController

@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UIImageView *imageView;

- (instancetype) initWithMedia:(Media *)media;

- (void) centerScrollView;

@end