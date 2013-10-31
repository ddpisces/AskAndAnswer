//
//  OAQuestionDetailViewController.m
//  REFrostedViewControllerStoryboards
//
//  Created by zz cienet on 10/31/13.
//  Copyright (c) 2013 Roman Efimov. All rights reserved.
//

#import "OAQuestionDetailViewController.h"

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
	self.data = [[NSMutableArray alloc] initWithArray:@[
                                                        @{
                                                            @"text": @"He felt that his whole life was some kind of dream and he sometimes wondered whose it was and whether they were enjoying it.",
                                                            @"date": [NSDate date],
                                                            @"type": @(AMBubbleCellReceived),
                                                            @"username": @"Stevie",
                                                            @"color": [UIColor redColor]
                                                            },
                                                        @{
                                                            @"text": @"My dad isn’t famous. My dad plays jazz. You can’t get famous playing jazz",
                                                            @"date": [NSDate date],
                                                            @"type": @(AMBubbleCellSent)
                                                            },
                                                        @{
                                                            @"date": [NSDate date],
                                                            @"type": @(AMBubbleCellTimestamp)
                                                            },
                                                        @{
                                                            @"text": @"离开家的分开了大家来看司法局快乐的三姐夫离开的解放了快速减肥卢卡斯的距离靠发牢骚看到解放了快速的解放了考四级的非离开计算的法律考四级的了快速离开家的疯了快死的解放了打算开发就算离开离开就死定了开发就算了肯德基发牢骚肯德基卢卡斯的减肥离开三等奖",
                                                            @"date": [NSDate date],
                                                            @"type": @(AMBubbleCellReceived),
                                                            @"username": @"John",
                                                            @"color": [UIColor orangeColor]
                                                            },
                                                        @{
                                                            @"text": @"The only reason for walking into the jaws of Death is so's you can steal His gold teeth.",
                                                            @"date": [NSDate date],
                                                            @"type": @(AMBubbleCellSent)
                                                            },
                                                        @{
                                                            @"text": @"The gods had a habit of going round to atheists' houses and smashing their windows.",
                                                            @"date": [NSDate date],
                                                            @"type": @(AMBubbleCellReceived),
                                                            @"username": @"Jimi",
                                                            @"color": [UIColor blueColor]
                                                            },
                                                        @{
                                                            @"text": @"you are lucky. Your friend is going to meet Bel-Shamharoth. You will only die.",
                                                            @"date": [NSDate date],
                                                            @"type": @(AMBubbleCellSent)
                                                            },
                                                        @{
                                                            @"text": @"Guess the quotes!",
                                                            @"date": [NSDate date],
                                                            @"type": @(AMBubbleCellSent)
                                                            },
                                                        ]
				 ];

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
