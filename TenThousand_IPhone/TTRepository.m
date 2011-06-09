//
//  TTRepository.m
//  TenThousand_IPhone
//
//  Created by Brian Ball on 6/9/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TTRepository.h"

static NSMutableArray *expertisesData;
static NSMutableArray *practiceLogData;

@implementation TTRepository

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

+(id) expertises{
    return expertisesData;
}

+(void) moveExpertiseFrom:(NSInteger)fromIndex to:(NSInteger)toIndex{
    
    TTExpertise *expertise = [expertisesData objectAtIndex:fromIndex];
    [expertise retain];
    
    [expertisesData removeObjectAtIndex:fromIndex];
    [expertisesData insertObject:expertise atIndex:toIndex];
    [expertise release];
}

+(void) addExpertise:(TTExpertise*)expertise{
    [expertisesData addObject:expertise];
}
+(void) removeExpertiseAtIndex:(NSInteger)index{
    [expertisesData removeObjectAtIndex:index];
}

+(id) practiceLogs{
    return practiceLogData;
}

+(void) addPracticeLog:(TTPracticeLog*)practiceLog{
    [practiceLogData addObject:practiceLog];
}

+(void) removePracticeLogAtIndex:(NSInteger)index{
    [practiceLogData removeObjectAtIndex:index];
}
+(void) initializeData{
    
    
    expertisesData = [[NSMutableArray alloc]initWithObjects:
                  [[TTExpertise alloc] initWithName: @"Tuba" andId:1],
                  [[TTExpertise alloc] initWithName: @"Drawing" andId:2],
                  [[TTExpertise alloc] initWithName: @"Katas" andId:3],
                  [[TTExpertise alloc] initWithName: @"Pro Dev Time" andId:4],
                  nil];
    practiceLogData = [[NSMutableArray alloc] initWithObjects:
                   [[TTPracticeLog alloc] initWithExpertise: [expertisesData objectAtIndex:0]
                                                    andDate: [[NSDate alloc] initWithTimeIntervalSince1970:1000000]
                                                andDuration: 1000],
                   [[TTPracticeLog alloc] initWithExpertise: [expertisesData objectAtIndex:0]
                                                    andDate: [[NSDate alloc] initWithTimeIntervalSince1970:1000002]
                                                andDuration: 1050],
                   nil];

}

@end
