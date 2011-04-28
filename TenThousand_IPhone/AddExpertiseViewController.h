//
//  AddExpertiseViewController.h
//  TenThousand_IPhone
//
//  Created by Brian Ball on 4/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TTExpertise.h"
#import "TenThousand_IPhoneAppDelegate.h"
#import "ExpertiseAddDelegate.h"

@interface AddExpertiseViewController : UIViewController {
    IBOutlet UITextField* expertiseName;
    IBOutlet UIBarButtonItem* saveButton;
    id delegate;
}
@property (retain) UITextField* expertiseName;
@property (retain) UIBarButtonItem* saveButton;
@property (retain) TTExpertise* expertise;
@property (retain) id delegate;
-(IBAction) cancelWasPressed:(id)sender;
-(IBAction) saveWasPressed:(id)sender;
-(IBAction) nameWasChanged:(id)sender;
@end
