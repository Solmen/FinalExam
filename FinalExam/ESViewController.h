//
//  ESViewController.h
//  EtchASketch
//
//  Created by Michael Toth on 3/2/14.
//  Copyright (c) 2014 Michael Toth. All rights reserved.
//

#import <UIKit/UIKit.h> 
#import "ESView.h"

@interface ESViewController : UIViewController {
    CGFloat lastVelocity;
}
@property (nonatomic, weak) IBOutlet ESView *esView;
- (IBAction)addHorizontal:(id)sender;
- (IBAction)addVertical:(id)sender;
@end
