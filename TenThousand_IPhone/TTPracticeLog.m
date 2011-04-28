//
//  TTPracticeLog.m
//  TenThousand_IPhone
//
//  Created by Brian Ball on 3/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TTPracticeLog.h"


@implementation TTPracticeLog
@synthesize expertise, expertiseId, time, practiceLogId, date;
-(id) initWithExpertise: (TTExpertise*) theExpertise andDate: (NSDate*) theDate andDuration:(NSTimeInterval) duration 
{
    self.expertise = theExpertise;
    self.date = theDate;
    self.expertiseId = theExpertise.expertiseId;
    self.time = duration;
    return self;
}
-(void)dealloc{
    [expertise release];
    [date release];
    [super dealloc];
}
@end
