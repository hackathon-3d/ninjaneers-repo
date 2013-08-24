//
//  GameViewController.m
//  Spellz
//
//  Created by Adam Mack on 8/24/13.
//  Copyright (c) 2013 Ninjaneer. All rights reserved.
//

#import "GameViewController.h"
#import "WordCompare.h"

@interface GameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *lblMessage;

@property (weak, nonatomic) IBOutlet UITextField *iPut;
@property (weak, nonatomic) NSString *wordToSpeak;

@end

@implementation GameViewController

@synthesize fliteController;
@synthesize slt;

- (IBAction)listenButton:(id)sender {
    WordCompare *wordCompare = [[WordCompare alloc] init];
    if (!_wordToSpeak) {
        _wordToSpeak = wordCompare.getWordToSpell;
    }
    [self.fliteController say:_wordToSpeak withVoice:self.slt];
}
- (IBAction)spellButton:(id)sender {
    //compare input to wordToSpeak
    
    NSString *input = _iPut.text;
    
    WordCompare *wordCompare = [[WordCompare alloc] init];
    BOOL equal = ![wordCompare compareInput:input toWord:_wordToSpeak];
    
    NSLog(@"equal %d", equal);
    
    if (equal == 0) {
        _lblMessage.text = @"NO MATCH";
        //_lblMessage.backgroundColor
    } else {
        _lblMessage.text = @"MATCH";
    }
    
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
