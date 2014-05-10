//
//  SpirographView.h
//  Spirograph
//
//  Created by Michael Toth on 2/21/14.
//  Copyright (c) 2014 Michael Toth. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SpirographView : UIView
{

    UIView *overWriteView;
    CGFloat lastL,lastK;
}
@property (nonatomic) BOOL overWrite;


@property (nonatomic) CGFloat l;
@property (nonatomic) CGFloat k;
@property (nonatomic) CGFloat stepSize;
@property (nonatomic) NSUInteger numberOfSteps;








@end
