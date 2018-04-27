//
//  Dice.m
//  Objective-C_4
//
//  Created by 佐藤亘 on 2018/04/25.
//  Copyright © 2018年 佐藤亘. All rights reserved.
//

#include <stdlib.h>
#import "Dice.h"

@implementation Dice

- (int)rollTheDice{
    self.value = arc4random_uniform(5) + 1;
    if (self.value == 3) {
        self.value = 0;
    }
    return self.value;
}

@end
