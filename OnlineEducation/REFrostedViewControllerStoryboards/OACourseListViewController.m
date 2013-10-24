//
//  OACourseListViewController.m
//  REFrostedViewControllerStoryboards
//
//  Created by zz cienet on 10/24/13.
//  Copyright (c) 2013 Roman Efimov. All rights reserved.
//

#import "OACourseListViewController.h"

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
	
    // init course buttons
    self.btChinese.text = @"语文";
    self.btChinese.textColor = [UIColor whiteColor];
    self.btChinese.tintColor = [UIColor colorWithRed:0.41 green:0.5 blue:0.5 alpha:1];
    
    self.btEnglish.text = @"英语";
    self.btEnglish.textColor = [UIColor whiteColor];
    self.btEnglish.tintColor = [UIColor colorWithRed:0.41 green:0.5 blue:0.5 alpha:1];
    
    self.btMath.text = @"数学";
    self.btMath.textColor = [UIColor whiteColor];
    self.btMath.tintColor = [UIColor colorWithRed:0.41 green:0.5 blue:0.5 alpha:1];
    
    self.btPysics.text = @"物理";
    self.btPysics.textColor = [UIColor whiteColor];
    self.btPysics.tintColor = [UIColor colorWithRed:0.41 green:0.5 blue:0.5 alpha:1];
    
    self.btChemistry.text = @"化学";
    self.btChemistry.textColor = [UIColor whiteColor];
    self.btChemistry.tintColor = [UIColor colorWithRed:0.41 green:0.5 blue:0.5 alpha:1];
    
    self.btHistory.text = @"历史";
    self.btHistory.textColor = [UIColor whiteColor];
    self.btHistory.tintColor = [UIColor colorWithRed:0.41 green:0.5 blue:0.5 alpha:1];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
