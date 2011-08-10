//
//  MainViewController.m
//  KillTheHipsters
//
//  Created by Diogo Costa on 03/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MainViewController.h"
#import "HipsterView.h"
#define HIPSTERCOUNT 10

@implementation MainViewController
@synthesize pointsLabel;


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	//self.view.autoresizingMask 
	int xLimit = self.view.frame.size.height - 64 - 10;
	NSLog(@"xlimit %i",xLimit);

	int yLimit = self.view.frame.size.width - 64 - 10;
	NSLog(@"ylimit %i",yLimit);
	srand(time(NULL));

	[super viewDidLoad];
	hipsterArray = [[NSMutableArray alloc] init];
	for (int i =0; i<HIPSTERCOUNT; i++) {
		int xValue = rand() % xLimit + 10;
		NSLog(@"xValue %i",xValue);
		
		int yValue = rand() % yLimit + 10;
		NSLog(@"xValue %i",yValue);
		
		HipsterView *hipsterView = [[HipsterView alloc] initWithFrame:CGRectMake(xValue, yValue, 64, 64)];
		hipsterView.image = [UIImage imageNamed:@"hipsterIcon.png"];
		hipsterView.alpha = 0.0;
		hipsterView.screenCaller = self;
		[hipsterArray addObject:hipsterView];
		[self.view addSubview:hipsterView];
		[hipsterView release];
	}
	
	srand(time(NULL));

	//[self showHipster];
	
}

-(void)fireTimer{
	//if (![timer isValid]) {
		[timer fire];
		
	//}
}

-(void)showHipster{
	NSLog(@"showHipster");
	int index = rand() % HIPSTERCOUNT;
	NSLog(@"index: %i",index);
	HipsterView *hipster = [hipsterArray objectAtIndex:index];
	hipster.alpha = 1.0;
}
-(void)viewWillAppear:(BOOL)animated{
//	[self fireTimer];
 timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(showHipster) userInfo:nil repeats:YES];


}
- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller {

	[self dismissModalViewControllerAnimated:YES];
}


- (IBAction)showInfo:(id)sender {    
	FlipsideViewController *controller = [[FlipsideViewController alloc] initWithNibName:@"FlipsideView" bundle:nil];
	controller.delegate = self;
	if ([timer isValid]) {
		[timer invalidate];

	}

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
	return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft || interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}



- (void)dealloc {
    [super dealloc];
}


@end
