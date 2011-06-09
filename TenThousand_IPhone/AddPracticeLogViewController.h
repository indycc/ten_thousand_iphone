//
//  AddPracticeLogViewController.h
//  TenThousand_IPhone
//
//  Created by Brian Ball on 5/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PracticeLogAddDelegate.h"
#import "TTRepository.h"


@interface AddPracticeLogViewController : UIViewController {
    id delegate;
    UITextField *minutesPracticedTextField;
    UIButton *dateButton;
    UIDatePicker *datePicker;
    UIPickerView *expertisePicker;
    UIButton *expertiseButton;
}
@property (nonatomic, retain) IBOutlet UIButton *expertiseButton;
@property (nonatomic, retain) IBOutlet UIPickerView *expertisePicker;
@property (nonatomic, retain) IBOutlet UIDatePicker *datePicker;
@property (nonatomic, retain) IBOutlet UITextField *minutesPracticedTextField;
@property (nonatomic, retain) IBOutlet UIButton *dateButton;
@property (retain) id delegate;
@property (retain) TTPracticeLog* practiceLog;
-(void)updateUi;
-(IBAction)cancelWasPressed:(id)sender;
-(IBAction)saveWasPressed:(id)sender;
-(IBAction)expertiseWasTapped:(id)sender;
-(IBAction)datePickerValueChanged:(id)sender;
-(IBAction)dateWasTapped:(id)sender;
@end
