//
//  DEMOViewController.m
//  REFrostedViewControllerStoryboards
//
//  Created by Roman Efimov on 10/9/13.
//  Copyright (c) 2013 Roman Efimov. All rights reserved.
//

#import "DEMORootViewController.h"
#import "DEMOAppDelegate.h"
#import "Course.h"
#import "Question.h"

@interface DEMORootViewController ()

@end

@implementation DEMORootViewController

- (void)awakeFromNib
{
    // create dummy data
    [self initDummyData];
    
    self.contentViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"contentController"];
    self.menuViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"menuController"];
}

- (void)initDummyData
{
    DEMOAppDelegate * appDelegate = [[UIApplication sharedApplication] delegate];
    self.managedObjectContext = [appDelegate managedObjectContext];
    
    // English
    Course *english = [NSEntityDescription
                       insertNewObjectForEntityForName:@"Course"
                       inManagedObjectContext:self.managedObjectContext];
    
    english.name = @"英语";
    
    // #1
    Question *english1 = [NSEntityDescription
                       insertNewObjectForEntityForName:@"Question"
                       inManagedObjectContext:self.managedObjectContext];
    
    english1.quest = @"because和because of的用法于区别";
    english1.answer = @"【解析】单独取出because或because of的内容，如果有动词（也就是谓语）的是句子，如果没有则是断语。because of 后跟名词、代词、或者是相当于名词的短语I can't go to the party this evening because of the exam.";
    [english addQuestionsObject:english1];
    
    // #2
    Question *english2 = [NSEntityDescription
                          insertNewObjectForEntityForName:@"Question"
                          inManagedObjectContext:self.managedObjectContext];
    
    english2.quest = @"would you like some的用法";
    english2.answer = @"【解析】一般：some：用于陈述肯定句中；any：用于否定句、疑问句或条件句中；特殊1：some：希望得到肯定的答复。特殊2：some和any后没有名词时，当做代名词， 此外两者也可做副词。";
    [english addQuestionsObject:english2];
    
    // #3
    Question *english3 = [NSEntityDescription
                          insertNewObjectForEntityForName:@"Question"
                          inManagedObjectContext:self.managedObjectContext];
    
    english3.quest = @"there be 句型常用方法";
    english3.answer = @"【解析】There be 是英语中常用句型， 意思是“有”，表示‘’人或事物的存在。There在此结构中是引导词，已经没有副词“那里”的含义。There be 后面的名词是句子的主语，属倒装结构。疑问句形式是将be或will/have/can/must等助动词、情态动词提至there之前，否定形式则直接在be或助动词、情态动词后加not，因此要表达’某个地方或某个时间存在什么事物或人‘的时候常用‘There be + 名词+ 地点（时间）这一句型。";
    [english addQuestionsObject:english3];
    
    // #4
    Question *english4 = [NSEntityDescription
                          insertNewObjectForEntityForName:@"Question"
                          inManagedObjectContext:self.managedObjectContext];
    
    english4.quest = @"how do you understand the saying'where there is a will,there is a way' 啥意思啊";
    english4.answer = @"【解析】有志者事竟成";
    [english addQuestionsObject:english4];
    
    // #5
    Question *english5 = [NSEntityDescription
                          insertNewObjectForEntityForName:@"Question"
                          inManagedObjectContext:self.managedObjectContext];
    
    english5.quest = @"every day与everyday的区别";
    english5.answer = @"【解析】everyday'日常的、每日的'，是形容词，在句中只作定语. every day是副词词组，在句中作状语，表示'每天、天天'。";
    [english addQuestionsObject:english5];
    
    
    
//    english.questions addQuestionsObject
    
    
    // Chinese
    Course *chinese = [NSEntityDescription
                       insertNewObjectForEntityForName:@"Course"
                       inManagedObjectContext:self.managedObjectContext];
    
    chinese.name = @"语文";
    
    // Math
    Course *math = [NSEntityDescription
                       insertNewObjectForEntityForName:@"Course"
                       inManagedObjectContext:self.managedObjectContext];
    
    math.name = @"数学";
    
    // History
    Course *history = [NSEntityDescription
                    insertNewObjectForEntityForName:@"Course"
                    inManagedObjectContext:self.managedObjectContext];
    
    history.name = @"历史";
    
    // Pysics
    Course *pysics = [NSEntityDescription
                       insertNewObjectForEntityForName:@"Course"
                       inManagedObjectContext:self.managedObjectContext];
    
    pysics.name = @"物理";
    
    // Chemistry
    Course *chemistry = [NSEntityDescription
                      insertNewObjectForEntityForName:@"Course"
                      inManagedObjectContext:self.managedObjectContext];
    
    chemistry.name = @"化学";
    
    NSError *savingError = nil;
    if ([self.managedObjectContext save:&savingError]) {
        NSLog(@"Successfully saved the context.");
    } else {
        NSLog(@"Failed to save the context. Error = %@", savingError);
    }
}

@end
