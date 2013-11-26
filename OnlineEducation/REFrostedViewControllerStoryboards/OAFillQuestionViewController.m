//
//  OAFillQuestionViewController.m
//  REFrostedViewControllerStoryboards
//
//  Created by zz cienet on 10/24/13.
//  Copyright (c) 2013 Roman Efimov. All rights reserved.
//

#import "OAFillQuestionViewController.h"
#import "DEMOAppDelegate.h"
#import "Question.h"
#import "QuesItem.h"
#import "AMBubbleGlobals.h"
#import "Course.h"
#import "OADataEngine.h"

typedef enum {
    GRADE,
    COURSE
}CategorySelection;

@interface OAFillQuestionViewController ()

@end

@implementation OAFillQuestionViewController{
    NSArray     *courses;
    NSArray     *grades;
    CategorySelection studentSelection;
    UIImagePickerController *picker;
    UIImage     *attachedImage;
    
    // core data
    NSManagedObjectContext *managedObjectContext;
}

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
    
    //To make the border look very close to a UITextField
    [self.questionFeild.layer setBorderColor:[[[UIColor grayColor] colorWithAlphaComponent:0.7] CGColor]];
    [self.questionFeild.layer setBorderWidth:1.0];
    
    //The rounded corner part, where you specify your view's corner radius:
    self.questionFeild.layer.cornerRadius = 5;
    self.questionFeild.clipsToBounds = YES;
    self.questionFeild.delegate = self;
    
    // raise question
    self.btRaiseQuestion.text = @"提交问题";
    self.btRaiseQuestion.textColor = [UIColor whiteColor];
    self.btRaiseQuestion.tintColor = [UIColor colorWithRed:0.41 green:0.5 blue:0.5 alpha:1];
    
    // init data
    courses = [NSArray arrayWithObjects:@"语文",@"数学", @"英语", @"物理",@"化学",@"历史", nil];
    grades = [NSArray arrayWithObjects:@"小一",@"小二", @"小三", @"小四",@"小五",@"小六", @"初一", @"初二", @"初三",@"高一", @"高二", @"高三", nil];
    
    // core date context
    DEMOAppDelegate * appDelegate = [[UIApplication sharedApplication] delegate];
    managedObjectContext = [appDelegate managedObjectContext];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark delegate Methods

- (void)itemSelectedatRow:(NSInteger)row{
    if (studentSelection == GRADE) {
        [self.btGrade setTitle:[grades objectAtIndex:row] forState:UIControlStateNormal];
    }
    else
    {
        [self.btCourse setTitle:[courses objectAtIndex:row] forState:UIControlStateNormal];
    }
}

#pragma mark -
#pragma mark IBAction Category Selection
- (IBAction)clickGrade:(id)sender {
    
    // mark user select grade
    studentSelection = GRADE;
    
    // show grade list
    UINavigationController *navigationController = (UINavigationController *)[self.storyboard instantiateViewControllerWithIdentifier:@"CatogerySelection"];
    KMCSimpleTableViewController *tableViewController = (KMCSimpleTableViewController *)[[navigationController viewControllers] objectAtIndex:0];
    tableViewController.tableData = grades;
    tableViewController.navigationItem.title = @"请选择年级";
    tableViewController.delegate = self;
    [self presentViewController:navigationController animated:YES completion:nil];
}

- (IBAction)clickCourse:(id)sender {
    
    // mark user select course
    studentSelection = COURSE;
    
    // show course list
    UINavigationController *navigationController = (UINavigationController *)[self.storyboard instantiateViewControllerWithIdentifier:@"CatogerySelection"];
    KMCSimpleTableViewController *tableViewController = (KMCSimpleTableViewController *)[[navigationController viewControllers] objectAtIndex:0];
    tableViewController.tableData = courses;
    tableViewController.navigationItem.title = @"请选择科目";
    tableViewController.delegate = self;
    [self presentViewController:navigationController animated:YES completion:nil];
}

- (IBAction)clickPickImage:(id)sender {
    picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    
    if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
    {
        picker.sourceType = UIImagePickerControllerSourceTypeCamera;
        
    }else
    {
        picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    }
    
    [self presentViewController:picker animated:YES completion:nil];
}

- (IBAction)clickRaiseQuestion:(id)sender {
    
    // question can not be empty
    if ([self.questionFeild.textStorage.string isEqualToString:@""]) {
        [self showAlert:@"问题内容不能为空"];
        return;
    }
    
    // must select grade and course
    if ([[self.btCourse currentTitle] isEqualToString:@"科目"]) {
        [self showAlert:@"请选择具体科目"];
        return;
    }
    
    // save question to core data
    [self createQuestion];
    
    UIAlertView *raiseQuestionAlter = [[UIAlertView alloc] initWithTitle:@"完成" message:@"您的问题已提交成功！" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    
    [raiseQuestionAlter show];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *) Picker {
    [Picker dismissViewControllerAnimated:YES completion:nil];
}

- (void)imagePickerController:(UIImagePickerController *) Picker

didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    attachedImage = [info objectForKey:UIImagePickerControllerOriginalImage];
    self.btnImagePick.imageView.image = attachedImage;
    
    [Picker dismissViewControllerAnimated:YES completion:nil];
    
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    if ([text isEqualToString:@"\n"]) {
        [self.questionFeild resignFirstResponder];
        return NO;
    }
    
    return YES;
}

- (void)showAlert:(NSString *)text
{
    UIAlertView *raiseQuestionAlter = [[UIAlertView alloc] initWithTitle:@"完成" message:text delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    
    [raiseQuestionAlter show];
}

- (void)createQuestion
{
    Question *newQuestion = [NSEntityDescription
                          insertNewObjectForEntityForName:@"Question"
                          inManagedObjectContext:managedObjectContext];
    
    // init item
    QuesItem *newItem = [NSEntityDescription
                                      insertNewObjectForEntityForName:@"QuesItem"
                                      inManagedObjectContext:managedObjectContext];
    
    newItem.text = self.questionFeild.textStorage.string;
    newItem.type = [NSNumber numberWithInt:AMBubbleCellSent];
    newItem.date = [NSDate date];
    
    if (attachedImage) {
        newItem.attachment = [NSData dataWithData:UIImagePNGRepresentation(attachedImage)];
    }
    
    // init question
    [newQuestion addItemsObject:newItem];
    
    Course *toCourse = [[OADataEngine sharedInstance] getCourseByName:[self.btCourse currentTitle]];
    [toCourse addQuestionsObject:newQuestion];
    
    // save data
    NSError *savingError = nil;
    if ([managedObjectContext save:&savingError]) {
        NSLog(@"Successfully saved the context.");
    } else {
        NSLog(@"Failed to save the context. Error = %@", savingError);
    }
}

@end
