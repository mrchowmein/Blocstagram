//
//  DataSource.h
//  
//
//  Created by Jason Chan MBP on 11/23/15.
//
//

#import <Foundation/Foundation.h>
@class Media;

@interface DataSource : NSObject

+(instancetype) sharedInstance;

@property (nonatomic, strong, readonly) NSArray *mediaItems;

- (void) deleteMediaItem:(Media *)item;

@end
