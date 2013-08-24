//
//  ViewController.m
//  Spellz
//
//  Created by CalvinWebster on 8/23/13.
//  Copyright (c) 2013 Ninjaneer. All rights reserved.
//

#import "ViewController.h"
#import "WordCompare.h"

@interface ViewController ()
@property (weak, nonatomic) WordCompare *wordCompare;
@end

@implementation ViewController

@synthesize fliteController;
@synthesize slt;

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self.fliteController say:@"Yea Baby, VOice to text." withVoice:self.slt];    
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
