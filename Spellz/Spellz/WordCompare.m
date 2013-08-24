//
//  WordCompare.m
//  Spellz
//
//  Created by Adam Mack on 8/23/13.
//  Copyright (c) 2013 Ninjaneer. All rights reserved.
//

#import "WordCompare.h"
#import "AppDelegate.h"

@interface WordCompare ()


@end

@implementation WordCompare

@synthesize wordToSpell;

- (id) init
{
    // Call superclass's initializer
    self = [super init];
    if( !self ) return nil;
        
    return self;
}


- (NSString *)getWordToSpell
{
    NSLog(@"getWordToSpell");
    
    AppDelegate *delegate = [[UIApplication sharedApplication] delegate];
    
    NSMutableArray *dictionaryOfWords = delegate.dictionaryOfWords;
    NSUInteger randomIndex = arc4random() % [dictionaryOfWords count];
    NSString *randomWord = [dictionaryOfWords objectAtIndex:randomIndex];
    NSLog(@"randomWord %@", randomWord);
    return randomWord;
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

