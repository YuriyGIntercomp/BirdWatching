//
//  BirdsDetailViewController.m
//  BirdWatching
//
//  Created by Yuriy Gritsenko on 7/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BirdSighting.h"
#import "BirdsDetailViewController.h"

@interface BirdsDetailViewController ()
- (void)configureView;
@end

@implementation BirdsDetailViewController

@synthesize sighting = _sighting, birdNameInput = _birdNameInput,
locationInput = _locationInput, dateInput = _dateInput;
@synthesize delegate = _delegate;

#pragma mark - Managing the detail item

- (void)setSighting:(BirdSighting *) newSighting
{
    if (_sighting != newSighting) {
        _sighting = newSighting;
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.
    BirdSighting *theSighting = self.sighting;
    static NSDateFormatter *formatter = nil;
    if (formatter == nil) {
        formatter = [[NSDateFormatter alloc] init];
        [formatter setDateStyle:NSDateFormatterMediumStyle];
    }
    if (theSighting) {
        self.birdNameInput.text = theSighting.name;
        self.locationInput.text = theSighting.location;
        self.dateInput.text = [formatter stringFromDate:(NSDate *)theSighting.created];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)viewDidUnload
{
    self.sighting = nil;
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)done:(id)sender {
    NSLog(@"Sent delegate");
    [[self delegate] birdDetailViewControllerDidFinish:self name:self.birdNameInput.text location:self.locationInput.text created:self.dateInput.text];
}
@end
