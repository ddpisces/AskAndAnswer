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

@interface OAQuestionBreifListViewController ()

@property (nonatomic, strong) NSMutableArray* data;

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
    
    // Dummy data
	self.data = [[OADataEngine sharedInstance] getQuestionsItems:_selectedCourse];
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
    // Return the number of rows in the section.(question + answer)
    return [self.data count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    OABriefListCell *cell = [tableView dequeueReusableCellWithIdentifier:@"OAQuestion" forIndexPath:indexPath];
    
    // Configure the cell...
    int i = indexPath.row;
    
    //label show question and answer
    [cell.lblQuestion setText:[[self.data objectAtIndex:i] objectAtIndex:0][@"text"]];
    [cell.lblAnswer setText:[[self.data objectAtIndex:i] objectAtIndex:1][@"text"]];
    
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
