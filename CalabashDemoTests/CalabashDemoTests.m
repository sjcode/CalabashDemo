//
//  CalabashDemoTests.m
//  CalabashDemoTests
//
//  Created by sujian on 15/01/2018.
//  Copyright © 2018 sujian. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Foo.h"
@interface CalabashDemoTests : XCTestCase
@property (nonatomic, strong) Foo *foo;
@end

@implementation CalabashDemoTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.foo = [[Foo alloc]init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    XCTAssert([[self.foo calculate:2 anthor:3] isEqualToString:@"result = 5"]);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
