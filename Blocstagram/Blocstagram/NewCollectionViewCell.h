//
//  NewCollectionViewCell.h
//  Blocstagram
//
//  Created by Jason Chan MBP on 1/6/16.
//  Copyright © 2016 Jason Chan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewCollectionViewCell : UICollectionViewCell

-(void) configureCollectionView:(CGFloat)thumbnailEdgeSize filterImage:(UIImage *)image filterTitle:(NSString *)title;

@end
