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
    
    [PlayerData sharedPlayerData].amountPoints += 10;
	[PlayerData sharedPlayerData].hitTargets += 1;
	screenCaller.pointsLabel.text = [NSString stringWithFormat:@"%i",[PlayerData sharedPlayerData].amountPoints];
    [self explode];

	
}


-(void)explode{
    
    UIImage* img1 = [UIImage imageNamed:@"explo1.png"];
    UIImage* img2 = [UIImage imageNamed:@"explo2.png"];
    UIImage* img3 = [UIImage imageNamed:@"explo3.png"];    
    UIImage* img4 = [UIImage imageNamed:@"explo4.png"];    
    UIImage* img5 = [UIImage imageNamed:@"explo5.png"];    

    NSArray *imgArray= [NSArray arrayWithObjects:img1, img2, img3,img4,img5, nil];
    [self setAnimationImages:imgArray];
    [self setAnimationDuration: 0.4];
    [self setAnimationRepeatCount:1.0];
    [self startAnimating];
    [self performSelector:@selector(didExplode) withObject:nil afterDelay:0.4];
    
}

-(void)didExplode{
    [self setAlpha: 0.0];

}

- (void)dealloc {
    [super dealloc];
}


@end
