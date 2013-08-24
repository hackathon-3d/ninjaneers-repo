//
//  ViewController.m
//  Spellz
//
//  Created by CalvinWebster on 8/23/13.
//  Copyright (c) 2013 Ninjaneer. All rights reserved.
//

#import "LandingViewController.h"
#import "AppDelegate.h"

@interface UIViewController ()

@end

@implementation LandingViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    AppDelegate *delegate = [[UIApplication sharedApplication] delegate];
    NSMutableArray *listOfProfiles = delegate.listOfProfiles;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
