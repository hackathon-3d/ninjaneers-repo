//
//  ProfileManager.m
//  Spellz
//
//  Created by Thomas Moorer on 8/24/13.
//  Copyright (c) 2013 Ninjaneer. All rights reserved.
//

#import "ProfileManager.h"
#import "AppDelegate.h"

@implementation ProfileManager

- (ProfileModel *)addProfile:(NSString*)name
{
    NSLog(@"addProfile %@", name);
    
    ProfileModel *newProfile = [[ProfileModel alloc] init];
    newProfile.name = name;
    newProfile.totalPoints = 0;
    newProfile.wordsSpelled = [[NSMutableDictionary alloc] init];
    
    AppDelegate *delegate = [[UIApplication sharedApplication] delegate];
    [delegate.listOfProfiles addObject:newProfile];
    return newProfile;
}

- (void)removeProfile:(NSString *)name
{
    NSLog(@"removeProfile %@", name);
    AppDelegate *delegate = [[UIApplication sharedApplication] delegate];
    NSMutableArray *profiles = delegate.listOfProfiles;
    for (int i=0; i<profiles.count; i++) {
        if ([[profiles objectAtIndex:i] name] == name) {
            [profiles removeObjectAtIndex:i];
        }
    }
}

@end
