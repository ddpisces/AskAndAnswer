//
//  DEMOSecondViewController.m
//  REFrostedViewControllerStoryboards
//
//  Created by Roman Efimov on 10/9/13.
//  Copyright (c) 2013 Roman Efimov. All rights reserved.
//

#import "DEMOSecondViewController.h"
#import "OALoginView.h"

@interface DEMOSecondViewController ()

@end

@implementation DEMOSecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    myCollapseClick.CollapseClickDelegate = self;
    [myCollapseClick reloadCollapseClick];
    
    // If you want a cell open on load, run this method:
    [myCollapseClick openCollapseClickCellAtIndex:1 animated:NO];
    
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
    return 2;
}

-(NSString *)titleForCollapseClickAtIndex:(int)index
{
    switch (index) {
        case 0:
            return @"登陆";
            break;
            
        case 1:
            return @"注册账户";
            break;
            
        default:
            return @"";
            break;
    }
}

-(UIView *)viewForCollapseClickContentViewAtIndex:(int)index
{
    switch (index) {
        case 0:{
            NSArray *objects = [[NSBundle mainBundle] loadNibNamed:@"OALoginView" owner:self options:nil];

            // for resign keyboard
            ((OALoginView *)[objects objectAtIndex:0]).username.delegate = self;
            ((OALoginView *)[objects objectAtIndex:0]).password.delegate = self;
            
            return [objects objectAtIndex:0];
            break;
        }
        case 1:
            return [[[NSBundle mainBundle] loadNibNamed:@"Registration" owner:nil options:nil] objectAtIndex:0];
            break;
            
        default:
            return [[[NSBundle mainBundle] loadNibNamed:@"LoginView" owner:nil options:nil] objectAtIndex:0];
            break;
    }
}

#pragma mark - Optional Collapse Delegate

-(UIColor *)colorForCollapseClickTitleViewAtIndex:(int)index {
    return [UIColor colorWithRed:223/255.0f green:47/255.0f blue:51/255.0f alpha:1.0];
}


-(UIColor *)colorForTitleLabelAtIndex:(int)index {
    return [UIColor colorWithWhite:1.0 alpha:0.85];
}

-(UIColor *)colorForTitleArrowAtIndex:(int)index {
    return [UIColor colorWithWhite:0.0 alpha:0.25];
}

-(void)didClickCollapseClickCellAtIndex:(int)index isNowOpen:(BOOL)open {
    NSLog(@"%d and it's open:%@", index, (open ? @"YES" : @"NO"));
}

#pragma mark - TextField Delegate for Demo
-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

@end
