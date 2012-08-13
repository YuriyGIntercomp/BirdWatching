//
//  BirdsDetailViewController.h
//  BirdWatching
//
//  Created by Yuriy Gritsenko on 7/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BirdSighting;
@protocol BirdDetailViewControllerDelegate;

@interface BirdsDetailViewController : UITableViewController

@property (strong, nonatomic) BirdSighting *sighting;
@property (weak, nonatomic) id <BirdDetailViewControllerDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITextField *birdNameInput;
@property (weak, nonatomic) IBOutlet UITextField *locationInput;
@property (weak, nonatomic) IBOutlet UITextField *dateInput;

- (IBAction)done:(UIBarButtonItem *)sender;

@end

@protocol BirdDetailViewControllerDelegate <NSObject>
- (void)birdDetailViewControllerDidFinish:(BirdsDetailViewController *)controller name:(NSString *)name location:(NSString *)location created:(NSString *)date;
- (void)birdDetailViewControllerDidFinish:(BirdsDetailViewController *)controller context:(NSManagedObjectContext *)context;
@end