//
//  AMBubbleTableCell.h
//  AMBubbleTableViewController
//
//  Created by Andrea Mazzini on 30/06/13.
//  Copyright (c) 2013 Andrea Mazzini. All rights reserved.
//

#import "AMBubbleGlobals.h"

@interface AMBubbleTableCell : UITableViewCell

@property (nonatomic, weak)   UIViewController *tableController;

- (id)initWithOptions:(NSDictionary*)options reuseIdentifier:(NSString *)reuseIdentifier;
- (void)setupCellWithType:(AMBubbleCellType)type withWidth:(float)width andParams:(NSDictionary*)params;
- (void)setupCellAttachment:(AMBubbleCellType)type attached:(UIImage *)image;

@end
