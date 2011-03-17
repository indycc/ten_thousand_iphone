//
//  TTExpertise.h
//  TenThousand_IPhone
//
//  Created by Brian Ball on 3/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface TTExpertise : NSObject {
    int expertiseId;
    NSString* expertiseName;
}

@property int expertiseId;
@property (retain) NSString* expertiseName;

-(id) initWithName: (NSString*) name andId:(int) _id;
@end
