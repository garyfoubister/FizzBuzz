//
//  FizzBuzzTests.m
//  FizzBuzzTests
//
//  Created by Gary Foubister on 8/19/15.
//  Copyright (c) 2015 Silver Shine LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "FizzBuzz.h"

@interface FizzBuzzTests : XCTestCase
{
    FizzBuzz *fizzBuzz;
}
@end

@implementation FizzBuzzTests

- (void)setUp
{
    [super setUp];
    
    fizzBuzz = [[FizzBuzz alloc] init];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testFizzBuzz
{
    XCTAssert([fizzBuzz isFizzBuzz: 15], @"FizzBuzz passed!");
}

- (void)testFizz
{
    XCTAssert([fizzBuzz isFizz: 3], @"Fizz passed!");
}

- (void)testBuzz
{
    XCTAssert([fizzBuzz isBuzz: 5], @"Buzz passed!");
}

- (void)testPerformanceExample
{
    [self measureBlock:^{
        
        [fizzBuzz printFizzBuzzNumbersFromStart: 1 toEnd: 100];
    }];
}


@end
