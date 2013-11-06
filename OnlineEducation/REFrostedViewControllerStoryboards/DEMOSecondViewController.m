//
//  DEMOSecondViewController.m
//  REFrostedViewControllerStoryboards
//
//  Created by Roman Efimov on 10/9/13.
//  Copyright (c) 2013 Roman Efimov. All rights reserved.
//

#import "DEMOSecondViewController.h"

@interface DEMOSecondViewController ()

@end

@implementation DEMOSecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.myCollapseClick.CollapseClickDelegate = self;
    [self.myCollapseClick reloadCollapseClick];
    
    // If you want a cell open on load, run this method:
    [self.myCollapseClick openCollapseClickCellAtIndex:1 animated:NO];
    
    /*
     // If you'd like multiple cells open on load, create an NSArray of NSNumbers
     // with each NSNumber corresponding to the index you'd like to open.
     // - This will open Cells at indexes 0,2 automatically
     
     NSArray *indexArray = @[[NSNumber numberWithInt:0],[NSNumber numberWithInt:2]];
     [myCollapseClick openCollapseClickCellsWithIndexes:indexArray animated:NO];
     */
}

- (IBAction)showMenu
{
    [self.frostedViewController presentMenuViewController];
}

#pragma mark - Collapse Delegate

-(int)numberOfCellsForCollapseClick
{
    return 3;
}

-(NSString *)titleForCollapseClickAtIndex:(int)index
{
    return @"lala";
}

-(UIView *)viewForCollapseClickContentViewAtIndex:(int)index
{
    return [[[NSBundle mainBundle] loadNibNamed:@"LoginView" owner:self options:nil] objectAtIndex:0];
}

@end
