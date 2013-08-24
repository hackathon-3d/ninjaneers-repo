//
//  ProfileManager.h
//  Spellz
//
//  Created by Thomas Moorer on 8/24/13.
//  Copyright (c) 2013 Ninjaneer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProfileModel.h"

@interface ProfileManager : NSObject

- (ProfileModel *)createProfile:(NSString *)name;
- (void)removeProfile:(NSString *)name;
- (void)setCurrentProfile:(ProfileModel *)profileModel;

@end
