//
//  WordCompare.m
//  Spellz
//
//  Created by Adam Mack on 8/23/13.
//  Copyright (c) 2013 Ninjaneer. All rights reserved.
//

#import "WordCompare.h"
#import "FliteTTS.h"

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
    
- (id)init {
    self = [super init];
    if (self) {
        //do init stuff
    }
    return self;
}

- (IBAction)speak:(id)sender
{
    _fliteEngine = [[FliteTTS alloc] init];
    [_fliteEngine speakText:@"It works."];	// Make it talk
    [_fliteEngine setPitch:100.0 variance:50.0 speed:1.0];	// Change the voice properties
	[_fliteEngine setVoice:@"cmu_us_awb"];	// Switch to a different voice
	[_fliteEngine stopTalking];
}

@end

