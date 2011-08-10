//
//  PlayerData.h
//  KillTheHipsters
//
//  Created by Diogo Costa on 10/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface PlayerData : NSObject {
	int amountPoints;
	int hitTargets;
}
+(PlayerData *) sharedPlayerData;

@property (nonatomic,assign) int amountPoints;
@property (nonatomic,assign) int hitTargets;

@end
