//
//  DEMOHomeViewController.m
//  REFrostedViewControllerStoryboards
//
//  Created by Roman Efimov on 10/9/13.
//  Copyright (c) 2013 Roman Efimov. All rights reserved.
//

#import "DEMOHomeViewController.h"
#import "DEMOSecondViewController.h"

@interface DEMOHomeViewController ()

@end

@implementation DEMOHomeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"";
}

- (IBAction)showMenu
{
    [self.frostedViewController presentMenuViewController];
}

- (IBAction)mySpaceClick:(id)sender {
    DEMOSecondViewController *creditspage = [self.storyboard instantiateViewControllerWithIdentifier:@"mySpace"];
    [UIView beginAnimations:@"flipping view" context:nil];
    [UIView setAnimationDuration:0.75];
    [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:self.navigationController.view cache:YES];
    [self.navigationController pushViewController:creditspage animated:NO];
    [UIView commitAnimations];
}

@end
