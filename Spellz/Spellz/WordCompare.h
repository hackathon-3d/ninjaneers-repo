//
//  WordCompare.h
//  Spellz
//
//  Created by Adam Mack on 8/23/13.
//  Copyright (c) 2013 Ninjaneer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProfileModel.h"

@interface WordCompare : NSObject

@property NSString *wordToSpell;

- (NSString *) getWordToSpell;
- (NSInteger *)incrementCount;
- (NSInteger *)addWord:(NSString *)word
            withPoints:(NSString *)points
        toProfileModel:(ProfileModel *)profileModel;

@end
