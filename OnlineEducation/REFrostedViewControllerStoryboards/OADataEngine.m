//
//  OADataEngine.m
//  REFrostedViewControllerStoryboards
//
//  Created by zz cienet on 10/31/13.
//  Copyright (c) 2013 Roman Efimov. All rights reserved.
//

#import "OADataEngine.h"
#import "AMBubbleGlobals.h"

static OADataEngine *sharedEngine = nil;

@implementation OADataEngine{
    NSMutableArray* data_chinese;
    NSMutableArray* data_math;
    NSMutableArray* data_english;
    NSMutableArray* data_history;
    NSMutableArray* data_chmistry;
    NSMutableArray* data_physics;
}

+(OADataEngine *)sharedInstance{
    @synchronized(self) {
        if(sharedEngine == nil) {
            sharedEngine = [[[self class] alloc] init];
            [sharedEngine initDummyData];
        }
    }
    return sharedEngine;
}

-(void)initDummyData
{
    // Chinese
    data_chinese = [[NSMutableArray alloc] initWithArray:@[@[
                                                               @{
                                                                   @"text": @"《水龙吟，登建康赏心亭》的主题思想是什么?",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellReceived),
                                                                   @"username": @"Stevie",
                                                                   @"color": [UIColor redColor]
                                                                   },
                                                               @{
                                                                   @"text": @"【解析】通过描述秋日登高望远的所见所感，抒发自己渴望北伐而不得的虚度光阴的苦闷，也是对偏安一隅的南宋统治者的鞭苔。",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellSent)
                                                                   },
                                                               ],
                                                           @[
                                                               @{
                                                                   @"text": @"试说明《天净沙。秋思》中的鼎足对。",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellReceived),
                                                                   @"username": @"Stevie",
                                                                   @"color": [UIColor redColor]
                                                                   },
                                                               @{
                                                                   @"text": @"【解析】该曲开头三句： '枯藤老树昏鸦，小桥流水人家，古道西风瘦马/，每句都是三种景物，词性及句式结构相同，对仗工整，因称'鼎足对'（鼎这种古容器就是三条腿的）。",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellSent)
                                                                   },
                                                               ],
                                                           @[
                                                               @{
                                                                   @"text": @"莺莺的叛逆精神是怎么表现的？ ",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellReceived),
                                                                   @"username": @"Stevie",
                                                                   @"color": [UIColor redColor]
                                                                   },
                                                               @{
                                                                   @"text": @"【解析】主要表现在她对功名利禄不屑一顾，看重自由恋爱，两人如同并头莲，朝夕相处，永不分离。也表现在对母亲背信弃义、通张生进京赶考的怨恨。",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellSent)
                                                                   },
                                                               ],
                                                           @[
                                                               @{
                                                                   @"text": @"什么叫文赋？",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellReceived),
                                                                   @"username": @"Stevie",
                                                                   @"color": [UIColor redColor]
                                                                   },
                                                               @{
                                                                   @"text": @"【解析】又赋就是散文化的赋，一般采取主客问答、抑客伸主的形式；散文句与对偶句交互使用；也讲押韵。",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellSent)
                                                                   },
                                                               ],
                                                           @[
                                                               @{
                                                                   @"text": @"宝玉挨打的导火线是什么？",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellReceived),
                                                                   @"username": @"Stevie",
                                                                   @"color": [UIColor redColor]
                                                                   },
                                                               @{
                                                                   @"text": @"【解析】贾政素日就不满宝玉常与优价交往，不在仕途经济上用心，以致王府派人来查询、怪罪。贾环借机拨弄是非，成了宝玉挨打的导火线。宝玉和贾环之间，存在嫡庶之间的矛盾。",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellSent)
                                                                   },
                                                               ],

                                                           ]
                    ];
    
    //Math
    data_math = [[NSMutableArray alloc] initWithArray:@[@[
                                                               @{
                                                                   @"text": @"甲原计划用N天完成任务，从第三个工作日起乙加入。乙和甲的工作效率一样。结果提前3天完成任务，问甲原计划多少天完成任务",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellReceived),
                                                                   @"username": @"Stevie",
                                                                   @"color": [UIColor redColor]
                                                                   },
                                                               @{
                                                                   @"text": @"【解析】设甲计划完成此项工作需x天，甲前两个工作日完成了2/x，剩余的工作日完成了(x-2-3)/x，则2/x+2(x-2-3)/x=1 解得x=8。",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellSent)
                                                                   },
                                                               ],
                                                           @[
                                                               @{
                                                                   @"text": @"一筐苹果比一筐梨重20％，那么一筐梨就比一筐苹果轻20％",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellReceived),
                                                                   @"username": @"Stevie",
                                                                   @"color": [UIColor redColor]
                                                                   },
                                                               @{
                                                                   @"text": @"【解析】苹果比梨重20％，表示苹果比梨重的部分占梨的20％，把梨的质量看作单位“1”；而梨 比苹果轻20％则表示梨比苹果轻的部分占苹果的20％，把苹果的质量看作单位“1”，两 个单位“1”不同，切忌将两个问题混为一谈。一筐苹果比一筐梨重20％，是把梨看作单位“1”，梨有100份，苹果就是100 + 20 = 120份；一筐梨比一筐苹果轻百分之几 = 一筐梨比一筐苹果轻的部分 ÷ 苹果 = （120 - 100）÷ 120≈16.7％",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellSent)
                                                                   },
                                                               ],
                                                           @[
                                                               @{
                                                                   @"text": @"一种电子产品，原价每台5000元，现在降低到3000元。降价百分之几？",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellReceived),
                                                                   @"username": @"Stevie",
                                                                   @"color": [UIColor redColor]
                                                                   },
                                                               @{
                                                                   @"text": @"【解析】降低到3000元，即现价为3000元，说明降低了2000元。求降价百分之几，就是求降低 的价格占原价的百分之几。  5000 – 3000 = 2000（元） 2000 ÷ 5000 = 40％ ",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellSent)
                                                                   },
                                                               ],
                                                           @[
                                                               @{
                                                                   @"text": @"王叔叔买了一辆价值16000元的摩托车。按规定，买摩托车要缴纳10％的车辆购置税。王叔叔买这辆摩托车一共要花多少钱？",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellReceived),
                                                                   @"username": @"Stevie",
                                                                   @"color": [UIColor redColor]
                                                                   },
                                                               @{
                                                                   @"text": @"【解析】王叔叔买这辆摩托车所需的钱应包含购买价和10％的车辆购置税两部分，而车辆购置税 是占摩托车购买价的10％，可先算出要缴纳的车辆购置税。也可以这样想：车辆购置税 占购买价的10％，把购买价看作单位“1”，王叔叔买这辆摩托车所需的钱相当于购买价的（1 + 10％），即求16000元的110％是多少，也用乘法计算。 方法1：16000 ×10％ + 16000 = 1600 + 16000 = 17600（元） 方法2：16000 ×（1 + 10％） =  16000 ×1.1 = 17600（元）",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellSent)
                                                                   },
                                                               ],
                                                           @[
                                                               @{
                                                                   @"text": @"扬州某风景区2007年“十一”黄金周接待游客9万人次，门票收入达270  万元。按门票的5％缴纳营业税计算，“十一”黄金周期间应缴纳营业税0.45万元。",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellReceived),
                                                                   @"username": @"Stevie",
                                                                   @"color": [UIColor redColor]
                                                                   },
                                                               @{
                                                                   @"text": @"【解析】营业税是按门票的5％缴纳，是占门票收入的5％，而不是占游客人数的5％",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellSent)
                                                                   },
                                                               ],
                                                           
                                                           ]
                    ];
    
    // English
    data_english = [[NSMutableArray alloc] initWithArray:@[@[
                                                               @{
                                                                   @"text": @"because和because of的用法于区别",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellReceived),
                                                                   @"username": @"Stevie",
                                                                   @"color": [UIColor redColor]
                                                                   },
                                                               @{
                                                                   @"text": @"【解析】单独取出because或because of的内容，如果有动词（也就是谓语）的是句子，如果没有则是断语。because of 后跟名词、代词、或者是相当于名词的短语I can't go to the party this evening because of the exam.",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellSent)
                                                                   },
                                                               ],
                                                           @[
                                                               @{
                                                                   @"text": @"would you like some的用法",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellReceived),
                                                                   @"username": @"Stevie",
                                                                   @"color": [UIColor redColor]
                                                                   },
                                                               @{
                                                                   @"text": @"【解析】一般：some：用于陈述肯定句中；any：用于否定句、疑问句或条件句中；特殊1：some：希望得到肯定的答复。特殊2：some和any后没有名词时，当做代名词， 此外两者也可做副词。",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellSent)
                                                                   },
                                                               ],
                                                           @[
                                                               @{
                                                                   @"text": @"there be 句型常用方法",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellReceived),
                                                                   @"username": @"Stevie",
                                                                   @"color": [UIColor redColor]
                                                                   },
                                                               @{
                                                                   @"text": @"【解析】There be 是英语中常用句型， 意思是“有”，表示‘’人或事物的存在。There在此结构中是引导词，已经没有副词“那里”的含义。There be 后面的名词是句子的主语，属倒装结构。疑问句形式是将be或will/have/can/must等助动词、情态动词提至there之前，否定形式则直接在be或助动词、情态动词后加not，因此要表达’某个地方或某个时间存在什么事物或人‘的时候常用‘There be + 名词+ 地点（时间）这一句型。",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellSent)
                                                                   },
                                                               ],
                                                           @[
                                                               @{
                                                                   @"text": @"how do you understand the saying'where there is a will,there is a way' 啥意思啊",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellReceived),
                                                                   @"username": @"Stevie",
                                                                   @"color": [UIColor redColor]
                                                                   },
                                                               @{
                                                                   @"text": @"【解析】有志者事竟成",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellSent)
                                                                   },
                                                               ],
                                                           @[
                                                               @{
                                                                   @"text": @"every day与everyday的区别",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellReceived),
                                                                   @"username": @"Stevie",
                                                                   @"color": [UIColor redColor]
                                                                   },
                                                               @{
                                                                   @"text": @"【解析】everyday'日常的、每日的'，是形容词，在句中只作定语. every day是副词词组，在句中作状语，表示'每天、天天'。",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellSent)
                                                                   },
                                                               ],
                                                           
                                                           ]
                    ];
    
    // Pysics
    data_physics = [[NSMutableArray alloc] initWithArray:@[@[
                                                               @{
                                                                   @"text": @"将A、B两纸片的上端提起，让纸片自由下垂，当向纸片中间用力吹气时",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellReceived),
                                                                   @"username": @"Stevie",
                                                                   @"color": [UIColor redColor]
                                                                   },
                                                               @{
                                                                   @"text": @"【解析】气体和液体都属于流体，在流体中，流速大的地方压强小，流速小的地方压强大．在分析纸条的运动现象时应分析纸条内外两侧空气的流速大小，找出压力的方向，再判断纸条的运动状态．",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellSent)
                                                                   },
                                                               ],
                                                           @[
                                                               @{
                                                                   @"text": @"为什么我在听录音时感觉自己的声音很奇怪,而听其他人的声音却一样?",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellReceived),
                                                                   @"username": @"Stevie",
                                                                   @"color": [UIColor redColor]
                                                                   },
                                                               @{
                                                                   @"text": @"【解析】你平时说话是通过你的内耳听的，是通过你的骨骼、肌肉等传到你的内耳的。录音机的声音是你通过你的外耳听见的，没有通过你的骨骼、肌肉等传到你的内耳的，所以你就觉得有不一样的感觉，这是正常的。",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellSent)
                                                                   },
                                                               ],
                                                           @[
                                                               @{
                                                                   @"text": @"在物理学中说物体间的力是相互的。那么既然施力物体与受力物体之间的作用力一样大，为什么没有相互抵消而是使物体运动了呢？",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellReceived),
                                                                   @"username": @"Stevie",
                                                                   @"color": [UIColor redColor]
                                                                   },
                                                               @{
                                                                   @"text": @"【解析】因为作用在不同的物体上，如果作用在同一个物体上，则可抵消。实际上，作用力和反作用力就是作用在不同的物体上的，平衡力就作用在同一个物体上，所以作用力和反作用力不可抵消，平衡力就可以抵消.",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellSent)
                                                                   },
                                                               ],
                                                           @[
                                                               @{
                                                                   @"text": @"对于水中的鱼，如果水的压强仅仅是向下，而不是作用于所有的方向，将发生什么现象？",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellReceived),
                                                                   @"username": @"Stevie",
                                                                   @"color": [UIColor redColor]
                                                                   },
                                                               @{
                                                                   @"text": @"【解析】鱼将被压强产生的压力压到水底，再也游不上来！",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellSent)
                                                                   },
                                                               ],
                                                           @[
                                                               @{
                                                                   @"text": @"将一块石蜡，分别放入足量的水和酒精中，当石蜡静止时，它排开水的体积与排开酒精的体积之比为多少？",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellReceived),
                                                                   @"username": @"Stevie",
                                                                   @"color": [UIColor redColor]
                                                                   },
                                                               @{
                                                                   @"text": @"【解析】由公式F=G=ρgv，可知ρ与v成反比，v1:v2=ρ2:ρ1=9:10",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellSent)
                                                                   },
                                                               ],
                                                           
                                                           ]
                    ];
    
    // Chemistry
    data_chmistry = [[NSMutableArray alloc] initWithArray:@[@[
                                                               @{
                                                                   @"text": @"金属单质与可溶性盐发生反应为什么金属不能是钾钠钙？",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellReceived),
                                                                   @"username": @"Stevie",
                                                                   @"color": [UIColor redColor]
                                                                   },
                                                               @{
                                                                   @"text": @"【解析】其实问题没那么简单。您说跟可溶性盐反应，是在溶液中反应吗？如果是在溶液中反应，那么其实应该说钾钙钠丢进水里以后金属键遭到攻击，电子流失给电负性（就是在化合态中对电子的吸引力）更强的离子或是分子手中。具体跟什么反应，很难说。因为都有可能。只是量上的悬殊关系罢了。置换反应的道理是一样的。",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellSent)
                                                                   },
                                                               ],
                                                           @[
                                                               @{
                                                                   @"text": @"为什么水是纯净物?",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellReceived),
                                                                   @"username": @"Stevie",
                                                                   @"color": [UIColor redColor]
                                                                   },
                                                               @{
                                                                   @"text": @"【解析】完全纯净的水是没有的，而且随着污染的越来越严重，水污染也已经非常的严重了，现在家庭使用的自来水被污染的也很严重了，很地方的水质都出现了问题。我家最近就新购买了莱特莱德的净水器，每天都要饮用很多水，如果水质不好危害性就可能很大。如果水质不好的地方建议你们也可以购买一台净水器，我家买的这个就挺好用的。为了我们的健康，一定要重视起来。",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellSent)
                                                                   },
                                                               ],
                                                           @[
                                                               @{
                                                                   @"text": @"二氧化碳的溶解度",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellReceived),
                                                                   @"username": @"Stevie",
                                                                   @"color": [UIColor redColor]
                                                                   },
                                                               @{
                                                                   @"text": @"【解析】一体积水可溶解一体积二氧化碳 温度越高 溶解度越小 压强越大 溶解度越大 在一定温度下，稀薄溶液中溶质的蒸气分压与溶液浓度成正比： pB＝kxB 式中pB是稀薄溶液中溶质的蒸气分压；xB是溶质的物质的量分数； k为亨利常数，其值与温度、压力以及溶质和溶剂的本性有关。由于在稀薄溶液中各种浓度成正比，所以上式中的xB还可以是mB（质量摩尔浓度）或cB（物质的量浓度）等，此时的k值将随之变化。",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellSent)
                                                                   },
                                                               ],
                                                           @[
                                                               @{
                                                                   @"text": @"如何判断氢氧化钠是否变质?",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellReceived),
                                                                   @"username": @"Stevie",
                                                                   @"color": [UIColor redColor]
                                                                   },
                                                               @{
                                                                   @"text": @"【解析】取少量的氢氧化钠样品，加入过量的盐酸，观察是否生成了无色的气体，如果生成了，说明氢氧化钠已经变质；否则就没有变质。",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellSent)
                                                                   },
                                                               ],
                                                           @[
                                                               @{
                                                                   @"text": @"如A中含少量B，如何提纯A？应该用蒸发溶剂法还是冷却热饱和溶液法？怎么判断啊？",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellReceived),
                                                                   @"username": @"Stevie",
                                                                   @"color": [UIColor redColor]
                                                                   },
                                                               @{
                                                                   @"text": @"【解析】冷却热的饱和溶液，要求是：溶解度受温度影响较大。蒸发溶剂：要求是：溶解度受温度影响不大（如食盐）",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellSent)
                                                                   },
                                                               ],
                                                           
                                                           ]
                    ];
    
    // History
    data_history = [[NSMutableArray alloc] initWithArray:@[@[
                                                               @{
                                                                   @"text": @"用史实说明“水能载舟，亦能覆舟”的道理",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellReceived),
                                                                   @"username": @"Stevie",
                                                                   @"color": [UIColor redColor]
                                                                   },
                                                               @{
                                                                   @"text": @"【解析】唐太宗李世民爱民，因此唐朝强大起来而隋炀帝杨广横征暴敛、欺压百姓、无恶不作，最终导致了隋朝的灭亡 纣王与周武王也是很好的例子",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellSent)
                                                                   },
                                                               ],
                                                           @[
                                                               @{
                                                                   @"text": @"国共第二次合作是什么时候？",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellReceived),
                                                                   @"username": @"Stevie",
                                                                   @"color": [UIColor redColor]
                                                                   },
                                                               @{
                                                                   @"text": @"【解析】1937年9月22日，国民党中央通讯社发表了《中共中央为公布国共合作宣言》。23日，蒋介石发表谈话，实际上承认了共产党的合法地位。至此，抗日民族统一战线正式形成，第二次国共合作开始。",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellSent)
                                                                   },
                                                               ],
                                                           @[
                                                               @{
                                                                   @"text": @"拿破仑的生平和简评?",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellReceived),
                                                                   @"username": @"Stevie",
                                                                   @"color": [UIColor redColor]
                                                                   },
                                                               @{
                                                                   @"text": @"【解析】拿破仑.波拿巴，法国近代史上著名的军事家和政治家，1769年出生于科西嘉岛阿雅克修城的一个破落贵族家庭。1779年，在法国布里埃纳军校学习军事。1784年，升入巴黎军官学校，毕业后被任命为瓦朗斯炮兵团少尉军官，时年仅16岁。 1789年，法国爆发了资产阶级革命，拿破仑同情革命，一时成为雅各宾派的拥护者。他三次回到故乡科西嘉岛，积极开展争取科西嘉岛自治和自由的活动。由于受到当地亲英反法的保利集团的排挤，被迫举家迁至法国本土。 ",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellSent)
                                                                   },
                                                               ],
                                                           @[
                                                               @{
                                                                   @"text": @"人类的起源是在哪个国家？",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellReceived),
                                                                   @"username": @"Stevie",
                                                                   @"color": [UIColor redColor]
                                                                   },
                                                               @{
                                                                   @"text": @"【解析】人类的起源问题没有令人信服的说法，所以也就没有办法确切的说起源于哪个国家.",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellSent)
                                                                   },
                                                               ],
                                                           @[
                                                               @{
                                                                   @"text": @"商鞅变法简述",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellReceived),
                                                                   @"username": @"Stevie",
                                                                   @"color": [UIColor redColor]
                                                                   },
                                                               @{
                                                                   @"text": @"【解析】春秋时期的秦国，社会经济和发展都落后于、燕、赵、等六个大国。。公元前384年，秦献公即位，下令废除人殉的恶习。次年又迁都栋立。秦孝公即位以后，决心彻底改革，便下令招贤。商鞅自魏国入秦，秦孝公任他为左庶长，开始变法。",
                                                                   @"date": [NSDate date],
                                                                   @"type": @(AMBubbleCellSent)
                                                                   },
                                                               ],
                                                           
                                                           ]
                    ];

}

-(NSMutableArray *)getChineseQuestions
{
    return data_chinese;
}

@end