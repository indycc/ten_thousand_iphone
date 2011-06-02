//
//  TTPracticeLog.h
//  TenThousand_IPhone
//
//  Created by Brian Ball on 3/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TTExpertise.h"

@interface TTPracticeLog : NSObject {
    int practiceLogId;
    int expertiseId;
    TTExpertise *expertise;
    NSInteger duration;
    NSDate *date;
}

@property (retain) TTExpertise *expertise;
@property (retain) NSDate *date;
@property NSInteger duration;
@property int practiceLogId;
@property int expertiseId;

-(id) initWithExpertise: (TTExpertise*) expertise andDate: (NSDate*) date andDuration:(NSInteger) duration;

@end
