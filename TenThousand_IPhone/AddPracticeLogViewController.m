//
//  AddPracticeLogViewController.m
//  TenThousand_IPhone
//
//  Created by Brian Ball on 5/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "AddPracticeLogViewController.h"
#import "TenThousand_IPhoneAppDelegate.h"

@implementation AddPracticeLogViewController
@synthesize expertiseButton;
@synthesize expertisePicker;
@synthesize datePicker;
@synthesize minutesPracticedTextField;
@synthesize dateButton;
@synthesize delegate, practiceLog;


-(IBAction)expertiseWasTapped:(id)sender{
    [minutesPracticedTextField resignFirstResponder];
    [expertisePicker setHidden:NO];
    [datePicker setHidden:YES];
}

-(IBAction)datePickerValueChanged:(id)sender{
    [practiceLog setDate: [sender date]];
    [self updateUi];
}
-(IBAction)dateWasTapped:(id)sender{
    [minutesPracticedTextField resignFirstResponder];
    [datePicker setHidden:NO];
    [expertisePicker setHidden:YES];
}
-(IBAction) cancelWasPressed:(id)sender{
    [delegate didAddPracticeLog:nil];
}
-(IBAction) saveWasPressed:(id)sender{
    
    // Is null or empty
    if( true ){
        [delegate didAddPracticeLog:practiceLog];
    }
    
    else {
        [delegate didAddPracticeLog:nil];
    }
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        TenThousand_IPhoneAppDelegate *del = (TenThousand_IPhoneAppDelegate*)[UIApplication sharedApplication].delegate;
        NSDate* date = [[NSDate alloc] init];
        TTExpertise* expertise = [[del expertises] objectAtIndex:0];
        practiceLog = [[TTPracticeLog alloc] initWithExpertise: expertise andDate: date andDuration: 10];
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [minutesPracticedTextField release];
    [expertisePicker release];
    [datePicker release];
    [dateButton release];
    [expertiseButton release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}
#pragma Picker View

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView*)pickerView{
    return 1;
}

-(void)pickerView:(UIPickerView*)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    TenThousand_IPhoneAppDelegate *del = (TenThousand_IPhoneAppDelegate*) [UIApplication sharedApplication].delegate;
    
    TTExpertise* expertise = [[del expertises] objectAtIndex:row];
    [practiceLog setExpertise:expertise];
    [self updateUi];
}

-(NSInteger)pickerView:(UIPickerView*)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    TenThousand_IPhoneAppDelegate *del = (TenThousand_IPhoneAppDelegate*) [UIApplication sharedApplication].delegate;
    return [[del expertises] count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    
    TenThousand_IPhoneAppDelegate *del = (TenThousand_IPhoneAppDelegate*) [UIApplication sharedApplication].delegate;
    return  [[[del expertises] objectAtIndex:row] expertiseName];
}

#pragma mark - Ui management
-(void) updateUi{
    [datePicker setDate: practiceLog.date];
    
    NSString* dateString = [NSDateFormatter localizedStringFromDate:practiceLog.date dateStyle:NSDateFormatterLongStyle timeStyle:NSDateFormatterShortStyle];
    NSString* expertiseName = practiceLog.expertise.expertiseName;
    
    [dateButton setTitle:dateString forState:UIControlStateNormal];
    
    [expertiseButton setTitle:expertiseName forState:UIControlStateNormal];
    
    NSString* minutesText = [[NSString alloc] initWithFormat:@"%i", practiceLog.duration];
    [minutesPracticedTextField setText:minutesText];
    
}
#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self updateUi];
    [minutesPracticedTextField becomeFirstResponder];
    
    [minutesPracticedTextField selectAll:self];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setMinutesPracticedTextField:nil];
    [self setDatePicker:nil];
    [self setExpertisePicker:nil];
    [self setDateButton:nil];
    [self setExpertiseButton:nil];
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
