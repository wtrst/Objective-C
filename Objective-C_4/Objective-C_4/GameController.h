//
//  GameController.h
//  Objective-C_4
//
//  Created by 佐藤亘 on 2018/04/25.
//  Copyright © 2018年 佐藤亘. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject

@property NSMutableArray <Dice *> *dices;
@property NSMutableDictionary *holdedDices;

-(instancetype)initWithDicesAndHoldedDices;
-(void)addDices:(Dice *)dice;
-(void)holdDice:(Dice *)dice andKey:(NSString *)key;
-(void)unholdDice:(NSString *)key;
-(void)resetDice;

@end
