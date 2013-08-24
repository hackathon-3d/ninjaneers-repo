//
//  WordCompare.m
//  Spellz
//
//  Created by Adam Mack on 8/23/13.
//  Copyright (c) 2013 Ninjaneer. All rights reserved.
//

#import "WordCompare.h"

@interface WordCompare ()
@end

@implementation WordCompare

@synthesize wordToSpell;


- (NSString *)getWordToSpell
{
    NSLog(@"getWordToSpell");
    
    return @"Hey Dude spell this word";
}

- (BOOL)compareInputToWord:(NSString*)attemptedSpelling{
    NSLog(@"compareInputToWord %@", attemptedSpelling);
    //may want to trim whitespace
    return[wordToSpell caseInsensitiveCompare:attemptedSpelling];
}

- (NSInteger)incrementCount
{
    NSLog(@"incrementCount");
    return 0;
}

- (NSInteger)addPointsToTotalPoints
{
    NSLog(@"addPointsToTotalPoints");
    return 0;
}

@end

