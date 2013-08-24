//
//  GameViewController.m
//  Spellz
//
//  Created by Adam Mack on 8/24/13.
//  Copyright (c) 2013 Ninjaneer. All rights reserved.
//

#import "GameViewController.h"

@interface GameViewController ()

@property (weak, nonatomic) IBOutlet UITextField *iPut;

@end

@implementation GameViewController
- (IBAction)listenButton:(id)sender {
}
- (IBAction)spellButton:(id)sender {
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
