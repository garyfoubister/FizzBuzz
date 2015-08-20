//
//  FizzBuzz.m
//  FizzBuzz
//
//  Created by Gary Foubister on 8/19/15.
//  Copyright (c) 2015 Silver Shine LLC. All rights reserved.
//

#import "FizzBuzz.h"

@implementation FizzBuzz

// FizzBuzz question:
// http://blog.codinghorror.com/why-cant-programmers-program/
//
// Write a program that prints the numbers from 1 to 100.
// For multiples of three print "Fizz" instead of the number
// For the multiples of five print "Buzz"
// For numbers which are multiples of both three and five print "FizzBuzz"

- (void)printFizzBuzzNumbersFromStart: (int)start
                                toEnd: (int)end
{
    for (int i = start; i <= end; i++)
    {
        if ([self isFizzBuzz: i])
        {
            NSLog(@"FizzBuzz");
        }
        else if ([self isFizz: i])
        {
            NSLog(@"Fizz");
        }
        else if ([self isBuzz: i])
        {
            NSLog(@"Buzz");
        }
        else
        {
            NSLog(@"%d", i);
        }
    }
}

- (bool)isFizzBuzz: (int)i
{
    return ([self isFizz: i] & [self isBuzz: i]);
}

- (bool)isFizz: (int)i
{
    return ((i % 3) == 0);
}

- (bool)isBuzz: (int)i
{
    return ((i % 5) == 0);
}

@end
