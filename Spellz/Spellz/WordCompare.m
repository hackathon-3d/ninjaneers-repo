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


- (NSString *)getWordToSpell
{
    NSLog(@"getWordToSpell");
    AppDelegate *delegate = [[UIApplication sharedApplication] delegate];
    NSMutableArray *dictionaryOfWords = delegate.dictionaryOfWords;
    if (dictionaryOfWords) {
        NSUInteger randomIndex = arc4random() % [dictionaryOfWords count];
        NSString *randomWord = [dictionaryOfWords objectAtIndex:randomIndex];
        NSLog(@"randomWord %@", randomWord);
        delegate.currentWord = randomWord;
        return randomWord;
    } else {
        return nil;
    }
}

- (BOOL)compareInput:(NSString*)input toWord:(NSString*)word {
    NSLog(@"compareInputToWord %@", word);
    //may want to trim whitespace
    return[word caseInsensitiveCompare:input];
}

@end

