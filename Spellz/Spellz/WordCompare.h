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
- (BOOL)compareInput:(NSString*)input toWord:(NSString*)word;

@end
