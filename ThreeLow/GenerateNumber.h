//
//  GenerateNumber.h
//  ThreeLow
//
//  Created by Auston Salvana on 7/7/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface GenerateNumber : NSObject

@property (assign) int totalHeld;

-(int)generateNumber;
-(UIImage*)makeImage:(UIButton*)button;
-(int)addScore:(UIButton*)button;
-(int)minusScore:(UIButton*)button;

@end
