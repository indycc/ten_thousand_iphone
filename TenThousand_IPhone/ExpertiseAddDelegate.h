//
//  ExpertiseAddDelegate.h
//  TenThousand_IPhone
//
//  Created by Brian Ball on 4/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//
#import "AddExpertiseViewController.h"
#import "TTExpertise.h"
@protocol ExpertiseAddDelegate <NSObject>

-(void)  didAddExpertise:(TTExpertise*)expertise;

@end