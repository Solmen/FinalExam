//
//  PlayingCard.h
//  Test1b
//
//  Created by Michael Toth on 2/18/14.
//  Copyright (c) 2014 Michael Toth. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card
@property (nonatomic, retain) NSString *suit;
@property (nonatomic) NSUInteger rank;
-(NSString *)rankAsString;
+(NSArray *)validSuits;
+(NSUInteger)maxRank;

@end
