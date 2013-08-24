//
//  ProfileModel.h
//  Spellz
//
//  Created by Adam Mack on 8/23/13.
//  Copyright (c) 2013 Ninjaneer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ProfileModel : NSObject

@property NSString *name;
@property NSInteger *totalPoints;
@property NSMutableDictionary *wordsSpelled;

- (void)addWord:(NSString *)word onAttempt:(NSString *)attempt;

@end
