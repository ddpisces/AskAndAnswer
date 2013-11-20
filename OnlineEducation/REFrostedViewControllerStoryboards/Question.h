//
//  Question.h
//  REFrostedViewControllerStoryboards
//
//  Created by zz cienet on 11/20/13.
//  Copyright (c) 2013 Roman Efimov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Course;

@interface Question : NSManagedObject

@property (nonatomic, retain) NSString * answer;
@property (nonatomic, retain) NSData * attachment;
@property (nonatomic, retain) NSString * quest;
@property (nonatomic, retain) Course *theCourse;

@end
