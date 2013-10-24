//
//  OACourseListViewController.h
//  REFrostedViewControllerStoryboards
//
//  Created by zz cienet on 10/24/13.
//  Copyright (c) 2013 Roman Efimov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NVUIGradientButton.h"

@interface OACourseListViewController : UIViewController

@property (strong, nonatomic) IBOutlet NVUIGradientButton *btChinese;
@property (strong, nonatomic) IBOutlet NVUIGradientButton *btMath;
@property (strong, nonatomic) IBOutlet NVUIGradientButton *btEnglish;
@property (strong, nonatomic) IBOutlet NVUIGradientButton *btPysics;
@property (strong, nonatomic) IBOutlet NVUIGradientButton *btChemistry;
@property (strong, nonatomic) IBOutlet NVUIGradientButton *btHistory;

@end
