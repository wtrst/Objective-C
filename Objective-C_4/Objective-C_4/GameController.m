//
//  GameController.m
//  Objective-C_4
//
//  Created by 佐藤亘 on 2018/04/25.
//  Copyright © 2018年 佐藤亘. All rights reserved.
//

#import "GameController.h"

@implementation GameController

- (instancetype)initWithDicesAndHoldedDices{
    self = [super init];
    if (self) {
        self.dices = [NSMutableArray new];
        self.holdedDices = [NSMutableDictionary new];
    }
    return self;
}

- (void)addDices:(Dice *)dice{
    [self.dices addObject:dice];
}

- (void)holdDice:(Dice *)dice andKey:(NSString *)key{
    [self.holdedDices setObject:dice forKey:key];
}

- (void)unholdDice:(NSString *)key{
    [self.holdedDices removeObjectForKey:key];
}

- (void)resetDice{
    [self.holdedDices removeAllObjects];
}

@end
