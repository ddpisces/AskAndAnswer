//
//  OADataEngine.h
//  REFrostedViewControllerStoryboards
//
//  Created by zz cienet on 10/31/13.
//  Copyright (c) 2013 Roman Efimov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OADataEngine : NSObject

+(OADataEngine *)sharedInstance;
-(void)initDummyData;
-(NSMutableArray *)getChineseQuestions;

@end
