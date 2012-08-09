//
//  BirdsMasterViewController.h
//  BirdWatching
//
//  Created by Yuriy Gritsenko on 7/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@class BirdSightingDataController;

@interface BirdsMasterViewController : UITableViewController

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

-(void)addBirdSightingWithName:(NSString *)inputBirdName location:(NSString *)inputLocation;
-(void)saveContext;

//@property (strong, nonatomic) BirdSightingDataController *dataController;
@end
