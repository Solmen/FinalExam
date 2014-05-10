//
//  Deck.h
//  Test1b
//
//  Created by Michael Toth on 2/18/14.
//  Copyright (c) 2014 Michael Toth. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayingCard.h"

@interface Deck : NSObject {
    PlayingCard *randomCard;
}

- (void)addCard:(PlayingCard *)aCard atTop:(BOOL)atTop;
- (PlayingCard *)drawRandomCard;
@end
