//
//  UIImage+ImageUtilities.h
//  Blocstagram
//
//  Created by Jason Chan MBP on 1/4/16.
//  Copyright © 2016 Jason Chan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ImageUtilities)

- (UIImage *) imageWithFixedOrientation;
- (UIImage *) imageResizedToMatchAspectRatioOfSize:(CGSize)size;
- (UIImage *) imageCroppedToRect:(CGRect)cropRect;

@end
