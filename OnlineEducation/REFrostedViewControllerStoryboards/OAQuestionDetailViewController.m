//
//  OAQuestionDetailViewController.m
//  REFrostedViewControllerStoryboards
//
//  Created by zz cienet on 10/31/13.
//  Copyright (c) 2013 Roman Efimov. All rights reserved.
//

#import "OAQuestionDetailViewController.h"
#import "OADataEngine.h"
#import "Question.h"
#import "QuesItem.h"

@interface OAQuestionDetailViewController () <AMBubbleTableDataSource, AMBubbleTableDelegate>

@property (nonatomic, strong) NSArray* data;
@property (nonatomic, strong) Question *currentQuestion;

@end

@implementation OAQuestionDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setDataSource:self];
    [self setDelegate:self];
	
    // Dummy data
    self.currentQuestion = [[OADataEngine sharedInstance] getCurrentSelectedQuestion:self.selectedCourse theQuestion:self.selectedQuestion];
    
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"date" ascending:YES];
    self.data = [self.currentQuestion.items sortedArrayUsingDescriptors:[NSArray arrayWithObject:sortDescriptor]];
    
//    NSLog(@"Current question:%@, answer:%@", self.currentQuestion.quest, self.currentQuestion.answer);

    // Set a style
	[self setTableStyle:AMBubbleTableStyleFlat];
}


#pragma mark - AMBubbleTableDataSource

- (NSInteger)numberOfRows
{
    return [self.data count];
}

- (AMBubbleCellType)cellTypeForRowAtIndexPath:(NSIndexPath *)indexPath
{
    QuesItem *item = [self.data objectAtIndex:indexPath.row];
    return [[item type] intValue];
}

- (NSString *)textForRowAtIndexPath:(NSIndexPath *)indexPath
{
    QuesItem *item = [self.data objectAtIndex:indexPath.row];
    return item.text;
}

- (NSDate *)timestampForRowAtIndexPath:(NSIndexPath *)indexPath
{
    QuesItem *item = [self.data objectAtIndex:indexPath.row];
    return [item date];
}

- (UIImage*)avatarForRowAtIndexPath:(NSIndexPath *)indexPath
{
    QuesItem *item = [self.data objectAtIndex:indexPath.row];
    
    if (AMBubbleCellSent == [item.type intValue]) {
        return [UIImage imageNamed:@"boy"];
    }
    else{
        return [UIImage imageNamed:@"teacher"];
    }
}

#pragma mark - AMBubbleTableDelegate

- (void)didSendText:(NSString*)text
{
    NSLog(@"User wrote: %@", text);
	
//	[self.data addObject:@{ @"text": text,
//                            @"date": [NSDate date],
//                            @"type": @(AMBubbleCellSent)
//                            }];
	
	NSIndexPath *indexPath = [NSIndexPath indexPathForRow:(self.data.count - 1) inSection:0];
	[self.tableView beginUpdates];
	[self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationRight];
	[self.tableView endUpdates];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
