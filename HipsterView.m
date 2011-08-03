//
//  HipsterView.m
//  KillTheHipsters
//
//  Created by Diogo Costa on 03/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HipsterView.h"


@implementation HipsterView


- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code.
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

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
	NSLog(@"touchesEnded");
	self.alpha = 0.0;
	[screenCaller showHipster];
}


- (void)dealloc {
    [super dealloc];
}


@end
