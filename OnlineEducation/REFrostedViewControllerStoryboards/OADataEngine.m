//
//  OADataEngine.m
//  REFrostedViewControllerStoryboards
//
//  Created by zz cienet on 10/31/13.
//  Copyright (c) 2013 Roman Efimov. All rights reserved.
//

#import "OADataEngine.h"

static OADataEngine *sharedEngine = nil;

@implementation OADataEngine{
    NSMutableArray* data_chinese;
}

+(OADataEngine *)sharedInstance{
    @synchronized(self) {
        if(sharedEngine == nil) {
            sharedEngine = [[[self class] alloc] init];
        }
    }
    return sharedEngine;
}

//+(void)initDummyData
//{
//    data_chinese = [[NSMutableArray alloc] initWithArray:@[
//                                                        @{
//                                                            @"text": @"He felt that his whole life was some kind of dream and he sometimes wondered whose it was and whether they were enjoying it.",
//                                                            @"date": [NSDate date],
//                                                            @"type": @(AMBubbleCellReceived),
//                                                            @"username": @"Stevie",
//                                                            @"color": [UIColor redColor]
//                                                            },
//                                                        @{
//                                                            @"text": @"My dad isn’t famous. My dad plays jazz. You can’t get famous playing jazz",
//                                                            @"date": [NSDate date],
//                                                            @"type": @(AMBubbleCellSent)
//                                                            },
//                                                        @{
//                                                            @"date": [NSDate date],
//                                                            @"type": @(AMBubbleCellTimestamp)
//                                                            },
//                                                        @{
//                                                            @"text": @"离开家的分开了大家来看司法局快乐的三姐夫离开的解放了快速减肥卢卡斯的距离靠发牢骚看到解放了快速的解放了考四级的非离开计算的法律考四级的了快速离开家的疯了快死的解放了打算开发就算离开离开就死定了开发就算了肯德基发牢骚肯德基卢卡斯的减肥离开三等奖",
//                                                            @"date": [NSDate date],
//                                                            @"type": @(AMBubbleCellReceived),
//                                                            @"username": @"John",
//                                                            @"color": [UIColor orangeColor]
//                                                            },
//                                                        @{
//                                                            @"text": @"The only reason for walking into the jaws of Death is so's you can steal His gold teeth.",
//                                                            @"date": [NSDate date],
//                                                            @"type": @(AMBubbleCellSent)
//                                                            },
//                                                        @{
//                                                            @"text": @"The gods had a habit of going round to atheists' houses and smashing their windows.",
//                                                            @"date": [NSDate date],
//                                                            @"type": @(AMBubbleCellReceived),
//                                                            @"username": @"Jimi",
//                                                            @"color": [UIColor blueColor]
//                                                            },
//                                                        @{
//                                                            @"text": @"you are lucky. Your friend is going to meet Bel-Shamharoth. You will only die.",
//                                                            @"date": [NSDate date],
//                                                            @"type": @(AMBubbleCellSent)
//                                                            },
//                                                        @{
//                                                            @"text": @"Guess the quotes!",
//                                                            @"date": [NSDate date],
//                                                            @"type": @(AMBubbleCellSent)
//                                                            },
//                                                        ]
//				 ];
//}

@end