//
//  OAFillQuestionViewController.h
//  REFrostedViewControllerStoryboards
//
//  Created by zz cienet on 10/24/13.
//  Copyright (c) 2013 Roman Efimov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NVUIGradientButton.h"

@interface OAFillQuestionViewController : UIViewController<UIPickerViewDataSource,UIPickerViewDelegate>

@property (strong, nonatomic) IBOutlet UITextView *questionFeild;
@property (strong, nonatomic) IBOutlet NVUIGradientButton *btRaiseQuestion;
@property (strong, nonatomic) IBOutlet UIPickerView *pickerView;

@end
