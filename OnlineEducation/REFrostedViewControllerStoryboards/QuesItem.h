//
//  QuesItem.h
//  REFrostedViewControllerStoryboards
//
//  Created by dupeng on 13-11-24.
//  Copyright (c) 2013年 Roman Efimov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Question;

@interface QuesItem : NSManagedObject

@property (nonatomic, retain) NSString * text;
@property (nonatomic, retain) NSData * attachment;
@property (nonatomic, retain) NSDate * date;
@property (nonatomic, retain) NSNumber * type;
@property (nonatomic, retain) Question *theQuestion;

@end
