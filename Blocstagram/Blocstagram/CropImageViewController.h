//
//  CropImageViewController.h
//  Blocstagram
//
//  Created by Jason Chan MBP on 1/5/16.
//  Copyright © 2016 Jason Chan. All rights reserved.
//

#import "MediaFullScreenViewController.h"

@class CropImageViewController;

@protocol CropImageViewControllerDelegate <NSObject>

- (void) cropControllerFinishedWithImage:(UIImage *)croppedImage;

@end


@interface CropImageViewController : MediaFullScreenViewController


- (instancetype) initWithImage:(UIImage *)sourceImage;

@property (nonatomic, weak) NSObject <CropImageViewControllerDelegate> *delegate;


@end
