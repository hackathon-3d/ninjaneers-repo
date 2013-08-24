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

- (void)addProfile:(NSString*)newName
{
    NSLog(@"addProfile %@", newName);
    name = newName;
}

- (void)removeProfile:(NSString*)removedName
{
    NSLog(@"removeProfile %@", removedName);
    //just a place holder
    name = @"";
}

- (void)addWordPoints:(NSString*)newWord:(NSString*)pointsValue
{
    NSLog(@"addSpelledWord %@ %@", newWord, pointsValue);
    [wordsSpelled  setValue:pointsValue forKey:newWord];
}


@end
