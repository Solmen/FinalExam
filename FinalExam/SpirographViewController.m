//
//  SpirographViewController.m
//  Spirograph
//
//  Created by Michael Toth on 2/20/14.
//  Copyright (c) 2014 Michael Toth. All rights reserved.
//

#import "SpirographViewController.h"


@interface SpirographViewController ()


@end

@implementation SpirographViewController
@synthesize numberOfSteps, stepSize;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.spirographView.l = 0.3;
    self.spirographView.k = 0.7;
    self.spirographView.numberOfSteps = 2000;
    self.spirographView.stepSize = 0.2;
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWasShown:)
                                                 name:UIKeyboardDidShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillBeHidden:)
                                                 name:UIKeyboardWillHideNotification object:nil];
    
   
}

- (void)viewDidLayoutSubviews {
    self.scrollView.contentSize = CGSizeMake(560, 280);
    [self.k setThumbImage:[UIImage imageNamed:@"kimage.png"] forState:UIControlStateNormal];
    [self.l setThumbImage:[UIImage imageNamed:@"limage.png"] forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)keyboardWasShown:(NSNotification*)Notification
{
 
    CGSize keyboardSize = [[[Notification userInfo] objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue].size;
    CGRect NewFrame = self.view.frame;
    NewFrame.origin.y -= keyboardSize.height;
    self.view.frame = NewFrame;
    
    
}

- (void)keyboardWillBeHidden:(NSNotification*)Notification
{
    CGSize keyboardSize = [[[Notification userInfo] objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
    CGRect newFrame = self.view.frame;
    newFrame.origin.y += keyboardSize.height;
    self.view.frame = newFrame;
    //[self.numberOfSteps resignFirstResponder];
    //[self.stepSize resignFirstResponder];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    [textField resignFirstResponder];
    return YES;
}


- (IBAction)redraw:(id)sender {
    /* self.spirographView.l = self.l.value;
     self.spirographView.k = self.k.value;
     self.spirographView.stepSize = self.stepSize.text.intValue;
     self.spirographView.numberOfSteps = self.numberOfSteps.text.intValue;
     [self.HarmonigraphView setNeedsDisplay];
     [self.spirographView setNeedsDisplay];
     */
    int kIntVal = self.k.value * 10;
    self.spirographView.k = kIntVal/10.0;
    int lIntVal = self.l.value * 10;
    self.spirographView.l = lIntVal/10.0;
    self.spirographView.stepSize = [self.stepSize.text floatValue];
    self.spirographView.numberOfSteps = [self.numberOfSteps.text intValue];
    
    [self.spirographView setNeedsDisplay];
    
}

@end
