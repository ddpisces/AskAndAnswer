//
//  OAFillQuestionViewController.h
//  REFrostedViewControllerStoryboards
//
//  Created by zz cienet on 10/24/13.
//  Copyright (c) 2013 Roman Efimov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NVUIGradientButton.h"
#import "KMCSimpleTableViewController.h"

@interface OAFillQuestionViewController : UIViewController<KMCSimpleTableViewControllerDelegate, UITextViewDelegate>

@property (strong, nonatomic) IBOutlet UITextView *questionFeild;
@property (strong, nonatomic) IBOutlet NVUIGradientButton *btRaiseQuestion;
@property (weak, nonatomic) IBOutlet UIButton *btGrade;
@property (weak, nonatomic) IBOutlet UIButton *btCourse;
@property (weak, nonatomic) IBOutlet UIButton *btnImagePick;


- (IBAction)clickGrade:(id)sender;
- (IBAction)clickCourse:(id)sender;
- (IBAction)clickPickImage:(id)sender;
- (IBAction)clickRaiseQuestion:(id)sender;

@end
