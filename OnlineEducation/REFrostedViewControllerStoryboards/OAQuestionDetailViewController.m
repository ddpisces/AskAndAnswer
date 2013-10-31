//
//  OAQuestionDetailViewController.m
//  REFrostedViewControllerStoryboards
//
//  Created by zz cienet on 10/31/13.
//  Copyright (c) 2013 Roman Efimov. All rights reserved.
//

#import "OAQuestionDetailViewController.h"
#import "OADataEngine.h"

@interface OAQuestionDetailViewController () <AMBubbleTableDataSource, AMBubbleTableDelegate>

@property (nonatomic, strong) NSMutableArray* data;

@end

@implementation OAQuestionDetailViewController

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
    
    [self setDataSource:self];
    [self setDelegate:self];
	
    // Dummy data
	self.data = [[OADataEngine sharedInstance] getChineseQuestions][4];

    // Set a style
	[self setTableStyle:AMBubbleTableStyleFlat];
}


#pragma mark - AMBubbleTableDataSource

- (NSInteger)numberOfRows
{
    return self.data.count;
}

- (AMBubbleCellType)cellTypeForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [self.data[indexPath.row][@"type"] intValue];
}

- (NSString *)textForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return self.data[indexPath.row][@"text"];
}

- (NSDate *)timestampForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [NSDate date];
}

- (UIImage*)avatarForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row % 2 == 0) {
        return [UIImage imageNamed:@"boy"];
    }
    else{
        return [UIImage imageNamed:@"teacher"];
    }
}

#pragma mark - AMBubbleTableDelegate

- (void)didSendText:(NSString*)text
{
    NSLog(@"User wrote: %@", text);
	
	[self.data addObject:@{ @"text": text,
                            @"date": [NSDate date],
                            @"type": @(AMBubbleCellSent)
                            }];
	
	NSIndexPath *indexPath = [NSIndexPath indexPathForRow:(self.data.count - 1) inSection:0];
	[self.tableView beginUpdates];
	[self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationRight];
	[self.tableView endUpdates];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
