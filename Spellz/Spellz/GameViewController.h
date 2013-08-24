//
//  GameViewController.h
//  Spellz
//
//  Created by Adam Mack on 8/24/13.
//  Copyright (c) 2013 Ninjaneer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Slt/Slt.h>
#import <OpenEars/FliteController.h>


FliteController *fliteController;
Slt *slt;

@interface GameViewController : UIViewController

@property (strong, nonatomic) FliteController *fliteController;
@property (strong, nonatomic) Slt *slt;

@end
