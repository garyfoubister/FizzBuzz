//
//  FizzBuzz.h
//  FizzBuzz
//
//  Created by Gary Foubister on 8/19/15.
//  Copyright (c) 2015 Silver Shine LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FizzBuzz : NSObject

- (void)printFizzBuzzNumbersFromStart: (int)start
                                toEnd: (int)end;


- (bool)isFizzBuzz: (int)i;

- (bool)isFizz: (int)i;

- (bool)isBuzz: (int)i;

@end
