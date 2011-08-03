//
//  MainViewController.m
//  KillTheHipsters
//
//  Created by Diogo Costa on 03/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MainViewController.h"
#import "HipsterView.h"
#define HIPSTERCOUNT 3

@implementation MainViewController



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	[super viewDidLoad];
	hipsterArray = [[NSMutableArray alloc] init];
	for (int i =0; i<HIPSTERCOUNT; i++) {
		HipsterView *hipsterView = [[UIImageView alloc] initWithFrame:CGRectMake(50*i, 10, 32, 32)];
		hipsterView.image = [UIImage imageNamed:@"hipsterIcon.png"];
		hipsterView.alpha = 0.0;
		[hipsterArray addObject:hipsterView];
		[self.view addSubview:hipsterView];
		[hipsterView release];
	}
	[self showHipster];
	
}


-(void)showHipster{
	int index = rand() % HIPSTERCOUNT + 1;
	NSLog(@"index: %i",index);
	HipsterView *hipster = [hipsterArray objectAtIndex:index];
	hipster.alpha = 1.0;
}

- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller {
    
	[self dismissModalViewControllerAnimated:YES];
}


- (IBAction)showInfo:(id)sender {    
	
	FlipsideViewController *controller = [[FlipsideViewController alloc] initWithNibName:@"FlipsideView" bundle:nil];
	controller.delegate = self;
	
	controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
	[self presentModalViewController:controller animated:YES];
	
	[controller release];
}


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc. that aren't in use.
}


- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}



// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	// Return YES for supported orientations.
	return (interfaceOrientation == UIInterfaceOrientationPortrait || interfaceOrientation == UIInterfaceOrientationLandscapeLeft || interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}



- (void)dealloc {
    [super dealloc];
}


@end
