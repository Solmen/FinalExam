//
//  ESView.h
//  EtchASketch
//
//  Created by Michael Toth on 3/2/14.
//  Copyright (c) 2014 Michael Toth. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ESView : UIView {
    NSMutableArray *points;
    CGPoint currentPoint;
}
@property (nonatomic) CGFloat currentVerticalAngle,currentHorizontalAngle, currentVelocity;
- (void) saveCurrentPoint;
@end
