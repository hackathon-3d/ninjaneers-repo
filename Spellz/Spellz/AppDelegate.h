//
//  AppDelegate.h
//  Spellz
//
//  Created by CalvinWebster on 8/23/13.
//  Copyright (c) 2013 Ninjaneer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProfileModel.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) NSMutableArray *dictionaryOfWords;
@property (strong, nonatomic) NSMutableArray *listOfProfiles;
@property (strong, nonatomic) ProfileModel *currentProfile;
@property (strong, nonatomic) NSString *currentWord;

@end
