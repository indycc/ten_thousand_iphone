//
//  AddExpertiseViewController.m
//  TenThousand_IPhone
//
//  Created by Brian Ball on 4/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "AddExpertiseViewController.h"


@implementation AddExpertiseViewController
@synthesize expertiseName, expertise, delegate, saveButton;

-(IBAction) nameWasChanged:(id)sender{
    if (![saveButton isEnabled] && [expertiseName.text length] ) {
        [saveButton setEnabled:YES];
    }
    else if([saveButton isEnabled] && ![expertiseName.text length]){
        [saveButton setEnabled:NO];
    }
}
-(IBAction) cancelWasPressed:(id)sender{
    [delegate didAddExpertise:nil];
}
-(IBAction) saveWasPressed:(id)sender{
    expertise.expertiseName = expertiseName.text;
    
    
    // Is null or empty
    if( [expertise.expertiseName length] != 0){
        [delegate didAddExpertise:expertise];
    }
    
    else {
        [delegate didAddExpertise:nil];
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

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [expertiseName becomeFirstResponder];
    
    [saveButton setEnabled:NO];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
