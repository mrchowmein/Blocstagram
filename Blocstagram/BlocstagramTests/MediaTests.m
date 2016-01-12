//
//  MediaTests.m
//  Blocstagram
//
//  Created by Jason Chan MBP on 1/11/16.
//  Copyright © 2016 Jason Chan. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Media.h"



@interface MediaTests : XCTestCase

@end

@implementation MediaTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testThatInitializationWorks
{
    NSDictionary *sourceDictionary = @{@"id": @"8675309",
                                       @"caption" : @{@"text" : @"hello hello"},
                                       @"image" : @{@"standard_resolution" : @{@":url" : @"http://www.example.com/example.jpg"}},
                                       @"user" : @{@"id" : @"1234567"},
                                       };
    
    Media *testMedia = [[Media alloc] initWithDictionary:sourceDictionary];
    
   XCTAssertEqualObjects(testMedia.idNumber, sourceDictionary[@"id"], @"The ID number should be equal");
    XCTAssertEqualObjects(testMedia.image, sourceDictionary[@"image"][@"standard_resolution"][@"url"], @"The image should be equal");
    XCTAssertEqualObjects(testMedia.caption, sourceDictionary[@"caption"][@"text"], @"The caption should be equal");
    XCTAssertNotNil(testMedia.user, @"user should not be nil");
    XCTAssertNotNil(testMedia.comments, @"comments should not be nil");
    
}




@end
