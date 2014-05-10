//
//  Test1bCardView.m
//  Test1b
//
//  Created by Michael Toth on 2/18/14.
//  Copyright (c) 2014 Michael Toth. All rights reserved.
//

#import "Test1bCardView.h"

@implementation Test1bCardView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [[NSBundle mainBundle] loadNibNamed:@"Test1bCardView" owner:self options:nil];
        // Initialization code
    }
    return self;
}

- (id)init {
    self = [super init];
    if (self) {
        [[NSBundle mainBundle] loadNibNamed:@"Test1bCardView" owner:self options:nil];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    UIBezierPath *bz = [UIBezierPath bezierPathWithRoundedRect:[self frame] cornerRadius:12.0];
    [bz addClip];
    [bz fill];
}


@end
