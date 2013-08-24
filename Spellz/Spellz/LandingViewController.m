//
//  ViewController.m
//  Spellz
//
//  Created by CalvinWebster on 8/23/13.
//  Copyright (c) 2013 Ninjaneer. All rights reserved.
//

#import "LandingViewController.h"
#import "WordCompare.h"
#import "AppDelegate.h"

@interface ViewController ()
@end

@implementation ViewController

@synthesize fliteController;
@synthesize slt;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    AppDelegate *delegate = [[UIApplication sharedApplication] delegate];
    NSMutableArray *listOfProfiles = delegate.listOfProfiles;
    
    WordCompare *wordCompare = [[WordCompare alloc] init];
    NSString *wordToSpeak = wordCompare.getWordToSpell;
    
    [self.fliteController say:wordToSpeak withVoice:self.slt];	    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (FliteController *)fliteController {
	if (fliteController == nil) {
		fliteController = [[FliteController alloc] init];
	}
	return fliteController;
}

- (Slt *)slt {
	if (slt == nil) {
		slt = [[Slt alloc] init];
	}
	return slt;
}

@end
