//
//  main.m
//  Objective-C_5
//
//  Created by 佐藤亘 on 2018/04/27.
//  Copyright © 2018年 佐藤亘. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *result;
//        NSArray *resultArray;
        PizzaSize size = Small;
        NSMutableArray *toppings = [NSMutableArray new];
        
        [InputCollector printToPrompt:@"Which kind of pizza would you like?"];
        result = [InputCollector inputForPrompt:@"(Type size and toppings that you would like)"];
        
        toppings = [[result componentsSeparatedByString:@" "] mutableCopy];
        if([toppings[0] isEqualToString:@"small"]){
            size = Small;
        }
        if ([toppings[0] isEqualToString:@"medium"]) {
            size = Medium;
        }
        if ([toppings[0] isEqualToString:@"large"]) {
            size = Large;
        }
        
        [toppings removeObjectAtIndex:0];
//        for (int i = 1; i < [resultArray count]; i++) {
//            toppings[i-1] = resultArray[i];
//        }
        
        Pizza *pizza = [[Pizza alloc] initWithSize:size andToppings:toppings];
        [pizza getPizzaSize];
        [pizza getPizzaToppings];
        
    }
    return 0;
}
