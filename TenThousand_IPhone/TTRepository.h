//
//  TTRepository.h
//  TenThousand_IPhone
//
//  Created by Brian Ball on 6/9/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TTPracticeLog.h"
#import "TTExpertise.h"

@interface TTRepository : NSObject {    
}

+(id) expertises;
+(void) addExpertise:(TTExpertise*)expertise;
+(void) removeExpertiseAtIndex:(NSInteger)index;
+(void) moveExpertiseFrom:(NSInteger)fromIndex to:(NSInteger)toIndex;
+(id) practiceLogs;
+(void) addPracticeLog:(TTPracticeLog*)practiceLog;
+(void) removePracticeLogAtIndex:(NSInteger)index;
+(void) initializeData;
@end
