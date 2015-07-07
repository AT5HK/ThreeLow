//
//  ViewController.h
//  ThreeLow
//
//  Created by Auston Salvana on 7/7/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GenerateNumber.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *dice1;
@property (weak, nonatomic) IBOutlet UIButton *dice2;
@property (weak, nonatomic) IBOutlet UIButton *dice3;
@property (weak, nonatomic) IBOutlet UIButton *dice4;
@property (weak, nonatomic) IBOutlet UIButton *dice5;
@property (nonatomic) NSMutableSet *toggledDice;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *allButtons;
@property (weak, nonatomic) IBOutlet UILabel *label;


- (IBAction)rollDice:(id)sender;
- (IBAction)resetDice:(id)sender;
- (IBAction)holdDie:(id)sender;

@end

