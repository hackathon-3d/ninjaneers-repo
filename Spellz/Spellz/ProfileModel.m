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


- (NSArray*)listProfiles
{
    NSLog(@"listProfile");
    return NULL;
}

- (BOOL)addProfile:(NSString*)newName
{
    NSLog(@"addProfile %@", newName);
    return NULL;
}

- (BOOL)removeProfile:(NSString*)removedName
{
    NSLog(@"removeProfile %@", removedName);
    return NULL;
}

- (BOOL)addSpelledWord:(NSString*)spelledWord
{
    NSLog(@"addSpelledWord");
    return NULL;
}


@end
