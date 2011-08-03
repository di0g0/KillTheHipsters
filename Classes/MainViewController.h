//
//  MainViewController.h
//  KillTheHipsters
//
//  Created by Diogo Costa on 03/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "FlipsideViewController.h"

@interface MainViewController : UIViewController <FlipsideViewControllerDelegate> {
	NSMutableArray *hipsterArray;
}

- (IBAction)showInfo:(id)sender;
-(void)showHipster;
@end
