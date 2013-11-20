//
//  Course.h
//  REFrostedViewControllerStoryboards
//
//  Created by zz cienet on 11/20/13.
//  Copyright (c) 2013 Roman Efimov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Question;

@interface Course : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSSet *questions;
@end

@interface Course (CoreDataGeneratedAccessors)

- (void)addQuestionsObject:(Question *)value;
- (void)removeQuestionsObject:(Question *)value;
- (void)addQuestions:(NSSet *)values;
- (void)removeQuestions:(NSSet *)values;

@end
