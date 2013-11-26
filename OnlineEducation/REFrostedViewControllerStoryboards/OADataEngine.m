//
//  OADataEngine.m
//  REFrostedViewControllerStoryboards
//
//  Created by zz cienet on 10/31/13.
//  Copyright (c) 2013 Roman Efimov. All rights reserved.
//

#import <CoreData/CoreData.h>
#import "OADataEngine.h"
#import "AMBubbleGlobals.h"
#import "DEMOAppDelegate.h"
#import "Course.h"

static OADataEngine *sharedEngine = nil;

@implementation OADataEngine

+(OADataEngine *)sharedInstance{
    @synchronized(self) {
        if(sharedEngine == nil) {
            sharedEngine = [[[self class] alloc] init];
            [sharedEngine initCoreData];
        }
    }
    return sharedEngine;
}

-(void)initCoreData
{
    // init core data context
    DEMOAppDelegate * appDelegate = [[UIApplication sharedApplication] delegate];
    self.managedObjectContext = [appDelegate managedObjectContext];
}

- (NSString *)getCourseName:(MyCourse)course
{
    switch (course) {
        case OAChinese:
            return @"语文";
            
        case OAEnglish:
            return @"英语";
            
        case OAMath:
            return @"数学";
            
        case OAChemistry:
            return @"化学";
            
        case OAHistory:
            return @"历史";
            
        case OAPysics:
            return @"物理";
            
        default:
            break;
    }
}

- (Course *)getCourseByName:(NSString *)name
{
    NSManagedObjectModel* model = [[self.managedObjectContext persistentStoreCoordinator] managedObjectModel];
    NSFetchRequest* request = [model fetchRequestFromTemplateWithName:@"FetchCourse"
                                                substitutionVariables:@{@"COURSE" : name}];
    NSError* error = nil;
    NSArray* results = [self.managedObjectContext executeFetchRequest:request error:&error];
    
    Course *currentCourse = [results objectAtIndex:0];
    NSLog(@"course name: %@", currentCourse.name);
    
    return currentCourse;
}

- (NSArray *)getQuestionsByCourse:(MyCourse)course
{
    Course *currentCourse = [self getCourseByName:[self getCourseName:course]];
    NSLog(@"course name: %@", currentCourse.name);
    
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"items.@min.date" ascending:YES];
    
    return [[currentCourse questions] sortedArrayUsingDescriptors:[NSArray arrayWithObject:sortDescriptor]];
}

- (Question *)getCurrentSelectedQuestion:(MyCourse)course theQuestion:(NSInteger)question
{
    NSArray *questions = [self getQuestionsByCourse:course];
    
    return [questions objectAtIndex:question];
}

@end