//
//  AppDelegate.m
//  Spellz
//
//  Created by CalvinWebster on 8/23/13.
//  Copyright (c) 2013 Ninjaneer. All rights reserved.
//

#import "AppDelegate.h"
#import "ProfileModel.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //-----------------------------------------------------------------------------
    //init listOfWords
    _dictionaryOfWords = [[NSMutableArray alloc] init];
    
    //get list of words
    NSString *allTheWords = [NSString stringWithContentsOfFile: @"/usr/share/dict/words"
                                                      encoding: NSUTF8StringEncoding
                                                         error: nil];
    //loop over and add to array
    for (NSString *line in [allTheWords componentsSeparatedByString:@"\n"]) {
        if (line.length > 4) {
            [_dictionaryOfWords addObject:line];
        }
    }
    //end init listOFWords
    
    //-----------------------------------------------------------------------------
    //init listOfDefaultProfiles
    _listOfProfiles = [[NSMutableArray alloc] init];
    
    ProfileModel *adam = [[ProfileModel alloc] init];
    adam.name = @"Adam";
    adam.totalPoints = (NSInteger*)36;
    [_listOfProfiles addObject:adam];
    
    ProfileModel *calvin = [[ProfileModel alloc] init];
    calvin.name = @"Calvin";
    calvin.totalPoints = (NSInteger*)33;
    [_listOfProfiles addObject:calvin];
    
    ProfileModel *thomas = [[ProfileModel alloc] init];
    thomas.name = @"Thomas";
    thomas.totalPoints = (NSInteger*)30;
    [_listOfProfiles addObject:thomas];
    //end init listOfProfile
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
