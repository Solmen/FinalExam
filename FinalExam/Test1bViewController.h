//
//  Test1bViewController.h
//  Test1b
//
//  Created by Michael Toth on 2/18/14.
//  Copyright (c) 2014 Michael Toth. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Test1bViewController : UIViewController
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cards;
- (IBAction)flipCard:(UIButton *)sender;
@property (nonatomic) NSUInteger flipCount;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;

@end
