//
//  CameraViewController.h
//  Blocstagram
//
//  Created by Jason Chan MBP on 1/4/16.
//  Copyright © 2016 Jason Chan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CameraViewController;

@protocol CameraViewControllerDelegate <NSObject>

- (void) cameraViewController:(CameraViewController *)cameraViewController didCompleteWithImage:(UIImage *)image;

@end

@interface CameraViewController : UIViewController

@property (nonatomic, weak) NSObject <CameraViewControllerDelegate> *delegate;


@end
