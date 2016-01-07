//
//  NewCollectionViewCell.m
//  Blocstagram
//
//  Created by Jason Chan MBP on 1/6/16.
//  Copyright © 2016 Jason Chan. All rights reserved.
//

#import "NewCollectionViewCell.h"

@implementation NewCollectionViewCell

-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    return self;
}

-(void) configureCollectionView:(CGFloat)thumbnailEdgeSize filterImage:(UIImage *)image filterTitle:(NSString *)title {
    

    
    static NSInteger imageViewTag = 1000;
    static NSInteger labelTag = 1001;
    
    UIImageView *thumbnail = (UIImageView *)[self.contentView viewWithTag:imageViewTag];
    UILabel *label = (UILabel *)[self.contentView viewWithTag:labelTag];
    

    
    if (!thumbnail) {
        thumbnail = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, thumbnailEdgeSize, thumbnailEdgeSize)];
        thumbnail.contentMode = UIViewContentModeScaleAspectFill;
        thumbnail.tag = imageViewTag;
        thumbnail.clipsToBounds = YES;
        
        [self.contentView addSubview:thumbnail];
    }
    
    if (!label) {
        label = [[UILabel alloc] initWithFrame:CGRectMake(0, thumbnailEdgeSize, thumbnailEdgeSize, 20)];
        label.tag = labelTag;
        label.textAlignment = NSTextAlignmentCenter;
        label.font = [UIFont fontWithName:@"HelveticaNeue-Medium" size:10];
        [self.contentView addSubview:label];
    }
    
    thumbnail.image = image;
    label.text = title;
}


@end
