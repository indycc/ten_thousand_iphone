//
//  ExpertiseDetail.h
//  TenThousand_IPhone
//
//  Created by Brian Ball on 3/31/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TTExpertise;
@interface ExpertiseDetail : UIViewController {
    IBOutlet UITextField *expertiseName;
    IBOutlet UILabel *nameLabel;
    
    TTExpertise *expertise;
}
@property (nonatomic, assign) TTExpertise *expertise;

@end
