//
//  Media.h
//  
//
//  Created by Jason Chan MBP on 11/23/15.
//
//

#import <UIKit/UIKit.h>
#import "LikeButton.h"

@class User;

@interface Media : NSObject

@property (nonatomic, strong) NSString *idNumber;
@property (nonatomic, strong) User *user;
@property (nonatomic, strong) NSURL *mediaURL;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) NSString *caption;
@property (nonatomic, strong) NSArray *comments;
@property (nonatomic, assign) LikeState likeState;
@property (nonatomic, strong) NSString *likeCount;

- (instancetype) initWithDictionary:(NSDictionary *)mediaDictionary;

@end
