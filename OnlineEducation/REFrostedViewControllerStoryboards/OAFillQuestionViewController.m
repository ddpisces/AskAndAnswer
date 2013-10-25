//
//  OAFillQuestionViewController.m
//  REFrostedViewControllerStoryboards
//
//  Created by zz cienet on 10/24/13.
//  Copyright (c) 2013 Roman Efimov. All rights reserved.
//

#import "OAFillQuestionViewController.h"

@interface OAFillQuestionViewController ()

@end

@implementation OAFillQuestionViewController{
    NSArray     *courses;
    NSArray     *grades;
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
    
    // raise question
    self.btRaiseQuestion.text = @"提交问题";
    self.btRaiseQuestion.textColor = [UIColor whiteColor];
    self.btRaiseQuestion.tintColor = [UIColor colorWithRed:0.41 green:0.5 blue:0.5 alpha:1];
    
    // init data
    courses = [NSArray arrayWithObjects:@"语文",@"数学", @"英语", @"物理",@"化学",@"历史", nil];
    grades = [NSArray arrayWithObjects:@"小一",@"小二", @"小三", @"小四",@"小五",@"小六", @"初一", @"初二", @"初三",@"高一", @"高二", @"高三", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark dataSouce

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return  2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    if (component == 0) {
        return [grades count];
    }
    else{
        return [courses count];
    }
}

#pragma mark -
#pragma mark delegate Methods

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    
    if (component == 0) {
        return [grades objectAtIndex:row];
    }
    else {
        return [courses objectAtIndex:row];
    }
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    
    
}

@end
