//
//  ComposeCommentViewTest.m
//  Blocstagram
//
//  Created by Jason Chan MBP on 1/12/16.
//  Copyright © 2016 Jason Chan. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ComposeCommentView.h"

@interface ComposeCommentViewTest : XCTestCase

@end

@implementation ComposeCommentViewTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}


- (void)testisWritingCommnent
{

    ComposeCommentView *testComment = [[ComposeCommentView alloc] init];
    
    [testComment setText:@"hello"];
    XCTAssertTrue(testComment.isWritingComment);
    
    [testComment setText:@""];
    XCTAssertFalse(testComment.isWritingComment);
    
}



@end
