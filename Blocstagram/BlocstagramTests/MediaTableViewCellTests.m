//
//  MediaTableViewCellTests.m
//  Blocstagram
//
//  Created by Jason Chan MBP on 1/12/16.
//  Copyright © 2016 Jason Chan. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MediaTableViewCell.h"
#import "Media.h"

@interface MediaTableViewCellTests : XCTestCase


//@property (atomic, strong) Media *testMedia;

@end

@implementation MediaTableViewCellTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}


- (void)testHeight

{
    
    NSDictionary *sourceDictionary = @{@"id": @"8675309",
                                       @"caption" : @{@"text" : @"hello hello"},
                                       @"image" : @{@"standard_resolution" : @{@":url" : @"http://www.example.com/example.jpg"}},
                                       //@"user" : @{@"id" : @"1234567", @"username": @"fakename", @"full_name": @"fakefullname"},
                                       };
    
    Media *testMedia = [[Media alloc] initWithDictionary:sourceDictionary];
    
    //UIImage *samplePicture = [UIImage imageNamed:@"1.jpg"];
    
    //testMedia.image = samplePicture;
    
    UITraitCollection *testTrait = [UITraitCollection traitCollectionWithUserInterfaceIdiom:UIUserInterfaceIdiomPhone];
    
    
    CGFloat height =  [MediaTableViewCell heightForMediaItem:testMedia width:320 traitCollection:testTrait];
    
    XCTAssertEqual(height, 138);
    
    
}
@end
