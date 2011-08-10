//
//  HipsterView.m
//  KillTheHipsters
//
//  Created by Diogo Costa on 03/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HipsterView.h"
#import "PlayerData.h"

@implementation HipsterView
@synthesize screenCaller;

- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code.
		NSLog(@"hipsterCriado");
		self.userInteractionEnabled = YES;
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code.
}
*/


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
	NSLog(@"touchesBegan");

}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
	NSLog(@"touchesEnded");
	self.alpha = 0.0;
	[PlayerData sharedPlayerData].amountPoints += 10;
	[PlayerData sharedPlayerData].hitTargets += 1;
	screenCaller.pointsLabel.text = [NSString stringWithFormat:@"%i",[PlayerData sharedPlayerData].amountPoints];
	//[screenCaller showHipster];
}


- (void)dealloc {
    [super dealloc];
}


@end
