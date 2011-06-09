//
//  ExpertiseViewController.h
//  TenThousand_IPhone
//
//  Created by Brian Ball on 3/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TenThousand_IPhoneAppDelegate.h"
#import "ExpertiseAddDelegate.h"
#import "TTRepository.h"
@class ExpertiseDetail;

@interface ExpertiseViewController : UITableViewController <ExpertiseAddDelegate> {
    ExpertiseDetail *detailViewController;
}

@end
