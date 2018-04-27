//
//  main.m
//  Objective-C_4
//
//  Created by 佐藤亘 on 2018/04/25.
//  Copyright © 2018年 佐藤亘. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "GameController.h"
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *result = @"";
        NSString *holdResult = @"";
        NSMutableArray <Dice *> *dices;
        NSMutableDictionary *hold;
        GameController *gc = [[GameController alloc] initWithDicesAndHoldedDices];
        
        Dice *dice1 = [Dice new];
        Dice *dice2 = [Dice new];
        Dice *dice3 = [Dice new];
        Dice *dice4 = [Dice new];
        Dice *dice5 = [Dice new];
        
        [gc addDices:dice1];
        [gc addDices:dice2];
        [gc addDices:dice3];
        [gc addDices:dice4];
        [gc addDices:dice5];
        
        dices = [gc dices];
        
        [InputCollector printToPrompt:@"What would you like to do?"];
        [InputCollector printToPrompt:@"----------------------------------------------"];
        [InputCollector printToPrompt:@"roll - get started the game and roll the dices"];
        [InputCollector printToPrompt:@"exit - finish the game"];
        [InputCollector printToPrompt:@"----------------------------------------------"];
        result = [InputCollector inputForPrompt:@""];
        
        if ([result isEqualToString:@"roll"]) {
            while ([hold count] < 5) {
                holdResult = @"";
                hold = [gc holdedDices];
            
                for (int i=0; i<5; i++) {
                    bool holded = false;
                    if ([hold count] > 0) {
                        for (NSString *key in hold) {
                            if (i+1 == [key intValue]) {
                                holded = true;
                            }
                        }
                        if (holded == true) {
                            NSLog(@"[Dice %d: %d]",i+1 ,dices[i].value);
                        }else{
                            NSLog(@"Dice %d: %d",i+1 ,[dices[i] rollTheDice]);
                        }
                    }else{
                        NSLog(@"Dice %d: %d",i+1 ,[dices[i] rollTheDice]);
                    }
                }

                while (![holdResult isEqualToString:@"end"]) {
                    [InputCollector printToPrompt:@"Which dice would you like to hold?"];
                    [InputCollector printToPrompt:@"----------------------------------------------"];
                    [InputCollector printToPrompt:@"1 to 5 - hold or unhold the value of each dices"];
                    [InputCollector printToPrompt:@"reset - unhold all values"];
                    [InputCollector printToPrompt:@"end - finish choosing the dices"];
                    [InputCollector printToPrompt:@"----------------------------------------------"];
                    holdResult = [InputCollector inputForPrompt:@""];
                    if ([holdResult intValue] > 0 && [holdResult intValue] < 6) {
                        bool remove = false;
                        for (NSString *key in hold) {
                            if ([holdResult isEqualToString:key]) {
                                remove = true;
                            }
                        }
                        if (remove == true) {
                            [gc unholdDice:holdResult];
                        }else{
                            [gc holdDice:dices[[holdResult intValue]-1] andKey:holdResult];
                        }
                        
                        for (int j=0; j<5; j++) {
                            bool holded = false;
                            for (NSString *key in hold) {
                                if (j+1 == [key intValue]) {
                                    holded = true;
                                }
                            }
                            if (holded == true) {
                                NSLog(@"[Dice %d: %d]",j+1 ,dices[j].value);
                            }else{
                                NSLog(@"Dice %d: %d",j+1 ,dices[j].value);
                            }
                        }
                    }
                    if ([holdResult isEqualToString:@"reset"]) {
                        [gc resetDice];
                        for (int j=0; j<5; j++) {
                            bool holded = false;
                            for (NSString *key in hold) {
                                if (j+1 == [key intValue]) {
                                    holded = true;
                                }
                            }
                            if (holded == true) {
                                NSLog(@"[Dice %d: %d]",j+1 ,dices[j].value);
                            }else{
                                NSLog(@"Dice %d: %d",j+1 ,dices[j].value);
                            }
                        }
                    }
                    if ([holdResult isEqualToString:@"end"]) {
                        if ([hold count] == 0) {
                            [InputCollector printToPrompt:@"Choose at least one dice!!"];
                            for (int j=0; j<5; j++) {
                                bool holded = false;
                                for (NSString *key in hold) {
                                    if (j+1 == [key intValue]) {
                                        holded = true;
                                    }
                                }
                                if (holded == true) {
                                    NSLog(@"[Dice %d: %d]",j+1 ,dices[j].value);
                                }else{
                                    NSLog(@"Dice %d: %d",j+1 ,dices[j].value);
                                }
                            }
                            holdResult = @"";
                        }
                    }
                }
            }
        }
        if ([result isEqualToString:@"exit"]) {
            [InputCollector printToPrompt:@"Thank you for playing!!"];
        }
    }
    
    return 0;
}
