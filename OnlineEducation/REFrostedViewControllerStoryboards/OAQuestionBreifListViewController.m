//
//  OAQuestionBreifListViewController.m
//  REFrostedViewControllerStoryboards
//
//  Created by zz cienet on 10/28/13.
//  Copyright (c) 2013 Roman Efimov. All rights reserved.
//

#import "OAQuestionBreifListViewController.h"
#import "OAQuestionDetailViewController.h"
#import "OABriefListCell.h"
#import "Question.h"
#import "QuesItem.h"

@interface OAQuestionBreifListViewController ()

@property (nonatomic, strong) NSArray *questionData;

@end

@implementation OAQuestionBreifListViewController{
    NSInteger selectedQuestion;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // remove table cell seperator
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    self.questionData = [[OADataEngine sharedInstance] getQuestionsByCourse:self.selectedCourse];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.questionData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    OABriefListCell *cell = [tableView dequeueReusableCellWithIdentifier:@"OAQuestion" forIndexPath:indexPath];
    
    // brief question only show first pair
    Question *currentQuest = [self.questionData objectAtIndex:indexPath.row];
    
    // fetch item based on date
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"date" ascending:YES];
    NSArray *questions = [currentQuest.items sortedArrayUsingDescriptors:[NSArray arrayWithObject:sortDescriptor]];
    
    QuesItem *firstQuestion = [questions objectAtIndex:0];
    QuesItem *firstAnswer;
    
    if (questions.count > 1)
    {
      firstAnswer = [questions objectAtIndex:1];
    }
    
    //label show question and answer
    [cell.lblQuestion setText:firstQuestion.text];
    
    // only has question, no answer
    if (firstAnswer) {
        [cell.lblAnswer setText:firstAnswer.text];
    } else {
        [cell.lblAnswer setText:@""];
        cell.lblAnswer.backgroundColor = [UIColor clearColor];
    }
    
    // display attachment logo if it contains attachment
    if (firstQuestion.attachment || firstAnswer.attachment) {
        [cell.imgAttach setImage:[UIImage imageNamed:@"attachment.png"]];
    }
    
    return cell;
}

#pragma mark - Table view delegate

- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    selectedQuestion = indexPath.row;
    
    return indexPath;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    OAQuestionDetailViewController *destiView = [segue destinationViewController];
    
    destiView.selectedCourse = self.selectedCourse;
    destiView.selectedQuestion = selectedQuestion;
}

@end
