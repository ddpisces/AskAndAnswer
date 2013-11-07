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

@interface DEMOSecondViewController : UIViewController<CollapseClickDelegate, UITextFieldDelegate>{
    
    __weak IBOutlet CollapseClick *myCollapseClick;
}

//@property (weak, nonatomic) IBOutlet CollapseClick *myCollapseClick;
@property (weak, nonatomic) IBOutlet UIView *loginView;
@property (weak, nonatomic) IBOutlet UIView *registerView;

- (IBAction)showMenu;

@end
