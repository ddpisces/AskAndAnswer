//
//  OACourseListViewController.m
//  REFrostedViewControllerStoryboards
//
//  Created by zz cienet on 10/24/13.
//  Copyright (c) 2013 Roman Efimov. All rights reserved.
//

#import "OACourseListViewController.h"
#import "OAQuestionBreifListViewController.h"

@interface OACourseListViewController ()

@end

@implementation OACourseListViewController

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
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    OAQuestionBreifListViewController *destiView = [segue destinationViewController];
    
    if([[segue identifier]isEqualToString:@"segChinese"])
    {
        destiView.selectedCourse = OAChinese;
    }
    else if ([[segue identifier]isEqualToString:@"segMath"])
    {
        destiView.selectedCourse = OAMath;
    }
    else if ([[segue identifier]isEqualToString:@"segPhysics"])
    {
        destiView.selectedCourse = OAPysics;
    }
    else if ([[segue identifier]isEqualToString:@"segEnglish"])
    {
        destiView.selectedCourse = OAEnglish;
    }
    else if ([[segue identifier]isEqualToString:@"segChemistry"])
    {
        destiView.selectedCourse = OAChemistry;
    }
    else
    {
        destiView.selectedCourse = OAHistory;
    }
    
}

@end
