//
//  Question.h
//  REFrostedViewControllerStoryboards
//
//  Created by dupeng on 13-11-24.
//  Copyright (c) 2013年 Roman Efimov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Course;

@interface Question : NSManagedObject

@property (nonatomic, retain) Course *theCourse;
@property (nonatomic, retain) NSSet *items;
@end

@interface Question (CoreDataGeneratedAccessors)

- (void)addItemsObject:(NSManagedObject *)value;
- (void)removeItemsObject:(NSManagedObject *)value;
- (void)addItems:(NSSet *)values;
- (void)removeItems:(NSSet *)values;

@end
