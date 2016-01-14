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


- (void)heightTest

{
    NSDictionary *sourceDictionary = @{@"id": @"8675309",
                                       @"caption" : @{@"text" : @"hello hello"},
                                       @"image" : @{@"standard_resolution" : @{@":url" : @"http://www.example.com/example.jpg"}},
                                       @"user" : @{@"id" : @"1234567"},
                                       };
    
    Media *testMedia = [[Media alloc] initWithDictionary:sourceDictionary];
    
    UITraitCollection *testTrait = [UITraitCollection traitCollectionWithUserInterfaceIdiom:UIUserInterfaceIdiomPad];
    
    CGFloat height = [MediaTableViewCell heightForMediaItem:testMedia width:300 traitCollection:testTrait];
    
    
    XCTAssertEqual(height, 100, @"pass");
    
    
}
@end
