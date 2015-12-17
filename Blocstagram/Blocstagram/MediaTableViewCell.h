//
//  MediaTableViewCell.h
//  
//
//  Created by Jason Chan MBP on 11/25/15.
//
//

#import <UIKit/UIKit.h>

@class Media, MediaTableViewCell;

@protocol MediaTableViewCellDelegate <NSObject>

- (void) cell:(MediaTableViewCell *)cell didTapImageView:(UIImageView *)imageView;
- (void) cell:(MediaTableViewCell *)cell didLongPressImageView:(UIImageView *)imageView;
- (void) cell:(MediaTableViewCell *)cell didTwoTouchImageView:(UIImageView *)imageView;

@end

@interface MediaTableViewCell : UITableViewCell

@property (nonatomic, strong) Media *mediaItem;

@property (nonatomic, weak) id <MediaTableViewCellDelegate> delegate;


+ (CGFloat) heightForMediaItem:(Media *)mediaItem width:(CGFloat)width;


@end
