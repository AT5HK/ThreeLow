//
//  ViewController.m
//  ThreeLow
//
//  Created by Auston Salvana on 7/7/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import "ViewController.h"
#import "CalculateScore.h"

@interface ViewController ()
@property (nonatomic) GenerateNumber *generate;
@property (assign) int score;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.generate = [[GenerateNumber alloc]init];
    self.toggledDice = [[NSMutableSet alloc]init];
    self.score = 0;
    
    for (UIButton *buttons in self.allButtons) {
        if ([self.toggledDice containsObject:buttons] != YES) {
            [buttons setBackgroundImage:[self.generate makeImage:buttons] forState:UIControlStateNormal];
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)rollDice:(id)sender {
    for (UIButton *buttons in self.allButtons) {
        if ([self.toggledDice containsObject:buttons] != YES) {
            [buttons setBackgroundImage:[self.generate makeImage:buttons] forState:UIControlStateNormal];
        }
    }
}

- (IBAction)resetDice:(id)sender {
    for (UIButton *button in self.toggledDice) {
        button.alpha = 1;
    }
    [self.toggledDice removeAllObjects];
    self.generate.totalHeld = 0;
    self.score = 0;
    self.label.text = [NSString stringWithFormat:@"%d",self.score];
}
- (IBAction)holdDie:(id)sender {
    UIButton *button = sender;
    if (button.alpha == 1.0) {
        button.alpha = 0.1;
        [self.toggledDice addObject:button];
        self.score = [self.generate addScore:button];
        self.label.text = [NSString stringWithFormat:@"%d",self.score];
    }
    else{
        button.alpha = 1.0;
        [self.toggledDice removeObject:button];
        self.score = [self.generate minusScore:button];
        self.label.text = [NSString stringWithFormat:@"%d",self.score];
    }
}
@end
