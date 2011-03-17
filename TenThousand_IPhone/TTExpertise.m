//
//  TTExpertise.m
//  TenThousand_IPhone
//
//  Created by Brian Ball on 3/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TTExpertise.h"


@implementation TTExpertise
@synthesize expertiseId, expertiseName;

-(id) initWithName:(NSString *)name andId:(int) _id{
    expertiseName = name;
    expertiseId = _id;
    return self;
}

@end
