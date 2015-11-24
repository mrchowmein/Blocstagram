//
//  DataSource.h
//  
//
//  Created by Jason Chan MBP on 11/23/15.
//
//

#import <Foundation/Foundation.h>

@interface DataSource : NSObject

+(instancetype) sharedInstance;

@property (nonatomic, strong, readonly) NSArray *mediaItems;


@end
