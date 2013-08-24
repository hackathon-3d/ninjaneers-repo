//
//  WordCompare.m
//  Spellz
//
//  Created by Adam Mack on 8/23/13.
//  Copyright (c) 2013 Ninjaneer. All rights reserved.
//

#import "WordCompare.h"

@interface WordCompare ()
- (void) speak:(id)sender;
@end

@implementation WordCompare

@synthesize wordToSpell;


- (NSString*)getWordToSpell
{
    NSLog(@"getWordToSpell");
    
    return NULL;
}

- (void)readWord
{
    NSLog(@"readWord");
}

- (BOOL)compareInputToWord:(NSString*)attemptedSpelling{
    NSLog(@"compareInputToWord %@", attemptedSpelling);
    //may want to trim whitespace
    return[wordToSpell caseInsensitiveCompare:attemptedSpelling];
}

- (NSInteger)incrementCount
{
    NSLog(@"incrementCount");
    return NULL;
}

- (NSInteger)addPointsToTotalPoints
{
    NSLog(@"addPointsToTotalPoints");
    return NULL;
}
    
@end

