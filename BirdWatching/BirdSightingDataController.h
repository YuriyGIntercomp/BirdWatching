//
//  BirdSightingDataController.h
//  BirdWatching
//
//  Created by Yuriy Gritsenko on 7/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BirdSighting;
@interface BirdSightingDataController : NSObject

@property (nonatomic, copy) NSMutableArray *masterBirdSightingList;

-(NSUInteger)countOfList;
-(BirdSighting *)objectInListAtIndex:(NSUInteger)theIndex;
-(void)addBirdSightingWithName:(NSString *)inputBirdName location:(NSString *)inputLocation;

@end
