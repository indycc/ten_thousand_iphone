//
//  TenThousand_IPhoneAppDelegate.h
//  TenThousand_IPhone
//
//  Created by Brian Ball on 3/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TTExpertise.h"
#import "TTPracticeLog.h"

@interface TenThousand_IPhoneAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {
    NSMutableArray *expertises;
    NSMutableArray *practiceLog;
    
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;

-(id) expertises;

@end
