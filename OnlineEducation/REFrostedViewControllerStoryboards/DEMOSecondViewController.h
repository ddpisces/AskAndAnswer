//
//  DEMOSecondViewController.h
//  REFrostedViewControllerStoryboards
//
//  Created by Roman Efimov on 10/9/13.
//  Copyright (c) 2013 Roman Efimov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "REFrostedViewController.h"
#import "CollapseClick.h"

@interface DEMOSecondViewController : UIViewController<CollapseClickDelegate, UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet CollapseClick *myCollapseClick;

- (IBAction)showMenu;

@end
