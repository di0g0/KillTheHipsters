//
//  PlayerData.m
//  KillTheHipsters
//
//  Created by Diogo Costa on 10/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PlayerData.h"

@implementation PlayerData
@synthesize amountPoints;
static PlayerData *sharedPlayerData = nil;

+(PlayerData *) sharedPlayerData
{
	if (!sharedPlayerData)
		sharedPlayerData = [[PlayerData alloc] init];
	
	return sharedPlayerData;
}

-(id) init
{
	if ((self=[super init]))
	{
		amountPoints = 0;
	}
	
	return self;
}

@end
