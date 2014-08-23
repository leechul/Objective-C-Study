//
//  CaculatorViewController.m
//  Calculaotr
//
//  Created by Chul Lee on 8/23/14.
//  Copyright (c) 2014 leechul. All rights reserved.
//

#import "CaculatorViewController.h"
#import "CaculatorBrain.h"

@interface CaculatorViewController ()
@property (nonatomic) BOOL userIsInTheMiddleOfEnteringANumber;
@property (nonatomic, strong) CaculatorBrain *barin;
@end

@implementation CaculatorViewController
@synthesize display=_display;
@synthesize userIsInTheMiddleOfEnteringANumber=_userIsInTheMiddleOfEnteringANumber;
@synthesize barin = _barin;

- (CaculatorBrain *) brain
{
    if (!_barin)
    { _barin = [[CaculatorBrain alloc] init];
    }
    return  _barin;
}

- (IBAction)digitPressed:(UIButton *)sender {
    NSString* digit = [sender currentTitle];
    if (self.userIsInTheMiddleOfEnteringANumber) {
        self.display.text = [self.display.text stringByAppendingString:digit];
    } else {
        self.display.text = digit;
        self.userIsInTheMiddleOfEnteringANumber = YES;
    }
    //NSLog(@"digitPressed = %@",digit);
    //UILabel *myDisplay = self.display;
    //NSString *currentText = myDisplay.text;//[myDisplay text];
    //NSString *newtext = [currentText stringByAppendingString:digit];
    //[myDisplay setText:newtext];
    
    
    
    //UILabel *myDisplay = self.display;
    //NSString *currentText = self.display.text;//[myDisplay text];
    //NSString *newtext = [self.display.text stringByAppendingString:digit];
    //self.display.text = [self.display.text stringByAppendingString:digit];
}
- (IBAction)enterPressed {
    [self.barin pushOperand:[self.display.text doubleValue]];
    self.userIsInTheMiddleOfEnteringANumber = NO;
}
- (IBAction)operationPressed:(UIButton *)sender {
    if (self.userIsInTheMiddleOfEnteringANumber) [self enterPressed];
    double result = [self.barin performOperation:sender.currentTitle ];
    NSString *resultString = [NSString stringWithFormat:@"%g", result];
    self.display.text = resultString;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
