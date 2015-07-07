//
//  GenerateNumber.m
//  ThreeLow
//
//  Created by Auston Salvana on 7/7/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import "GenerateNumber.h"

@interface GenerateNumber ()

@property (nonatomic) NSMutableDictionary *currentStore;

@end

@implementation GenerateNumber


- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentStore = [NSMutableDictionary dictionary];
    }
    return self;
}

-(int)generateNumber{
    
    int randomNum = arc4random_uniform(5) + 1;
    return randomNum;
}

-(UIImage*)makeImage:(UIButton*)button{
    if ([self.currentStore count] == 0) {
        [self.currentStore removeAllObjects];
    }
    NSNumber *generatedNum = [NSNumber numberWithInt:[self generateNumber]];
    [self.currentStore setObject:generatedNum forKey:[NSString stringWithFormat:@"%d", button.tag]];
    return [UIImage imageNamed:[NSString stringWithFormat:@"dice%@.png",generatedNum]];
}

-(int)addScore:(UIButton*)button{
    NSNumber *heldNumber = [self.currentStore objectForKey:[NSString stringWithFormat:@"%d", button.tag]];
    return self.totalHeld += [heldNumber intValue];
}

-(int)minusScore:(UIButton*)button{
    NSNumber *heldNumber = [self.currentStore objectForKey:[NSString stringWithFormat:@"%d", button.tag]];
    return self.totalHeld -= [heldNumber intValue];
}

@end
