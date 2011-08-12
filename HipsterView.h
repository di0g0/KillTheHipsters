//
//  HipsterView.h
//  KillTheHipsters
//
//  Created by Diogo Costa on 03/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainViewController.h"

@interface HipsterView : UIImageView {
	MainViewController *screenCaller;
}
@property (nonatomic,retain) MainViewController *screenCaller;

-(void)explode;
-(void)didExplode;

@end
