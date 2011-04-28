//
//  ExpertiseDetail.m
//  TenThousand_IPhone
//
//  Created by Brian Ball on 3/31/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ExpertiseDetail.h"
#import "TTExpertise.h"

@implementation ExpertiseDetail
@synthesize expertise;

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
    [nameLabel release];
    [expertiseName release];
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
    [expertiseName setText: expertise.expertiseName];
    [self.navigationItem setTitle:expertise.expertiseName];
}
-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
    [expertiseName resignFirstResponder];
    [expertise setExpertiseName:[expertiseName text]];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor groupTableViewBackgroundColor]];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    
    [nameLabel release];
    nameLabel = nil;
    [expertiseName release];
    expertiseName = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
