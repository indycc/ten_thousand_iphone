//
//  PracticeLogAddDelegate.h
//  TenThousand_IPhone
//
//  Created by Brian Ball on 5/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TTPracticeLog.h"

@protocol PracticeLogAddDelegate <NSObject>

-(void)  didAddPracticeLog:(TTPracticeLog*)practiceLog;

@end