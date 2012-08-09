//
//  BirdSighting.m
//  BirdWatching
//
//  Created by Yuriy Gritsenko on 7/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BirdSighting.h"

@implementation BirdSighting
@synthesize name = _name, location = _location, created = _created;

-(id)initWithName:(NSString *)name location:(NSString *)location created:(NSDate *)created
{
    self = [super init];
    if (self) {
        _name = name;
        _location = location;
        _created = created;
        return self;
    }
    return nil;
}

@end
