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

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //wordCompare = [[WordCompare alloc] init];
    
    [WordCompare speak];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
