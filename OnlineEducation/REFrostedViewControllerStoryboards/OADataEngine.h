//
//  OADataEngine.h
//  REFrostedViewControllerStoryboards
//
//  Created by zz cienet on 10/31/13.
//  Copyright (c) 2013 Roman Efimov. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
	OAChinese,
	OAMath,
	OAEnglish,
    OAPysics,
    OAChemistry,
    OAHistory
} MyCourse;

@interface OADataEngine : NSObject

+(OADataEngine *)sharedInstance;
-(void)initDummyData;
-(NSMutableArray *)getQuestionsItems:(MyCourse)course;

@end
