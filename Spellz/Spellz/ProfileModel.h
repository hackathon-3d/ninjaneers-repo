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

- (void)addProfile:(NSString*)newName;
- (void)removeProfile:(NSString*)removedName;
- (void)addWord:(NSString *)newWord withPoints:(NSString *)pointValue;

@end
