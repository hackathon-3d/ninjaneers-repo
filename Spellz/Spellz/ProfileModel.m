//
//  ProfileModel.m
//  Spellz
//
//  Created by Adam Mack on 8/23/13.
//  Copyright (c) 2013 Ninjaneer. All rights reserved.
//

#import "ProfileModel.h"

@implementation ProfileModel

@synthesize name;
@synthesize totalPoints;
@synthesize wordsSpelled;

- (void)addWord:(NSString *)word onAttempt:(NSString *)attempt
{
    NSLog(@"addWord onAttempt %@ %@", word, attempt);
    [wordsSpelled  setValue:attempt forKey:word];
}

- (void)incrementTotalPoints:(NSInteger)points
{
    NSLog(@"incrementTotalPoints %d", points);
    self.totalPoints += points;
}

@end
