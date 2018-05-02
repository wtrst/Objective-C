//
//  Pizza.m
//  Objective-C_5
//
//  Created by 佐藤亘 on 2018/04/27.
//  Copyright © 2018年 佐藤亘. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)initWithSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    self = [super init];
    if (self) {
        self.size = size;
        self.toppings = toppings;
    }
    
    return self;
}

- (NSString *)getPizzaSize{
    NSString *size = nil;
    
    switch (self.size) {
        case Small:
            size = @"Small";
            break;
        case Medium:
            size = @"Medium";
            break;
        case Large:
            size = @"Large";
            break;
    }
    return size;
}

- (NSArray *)getPizzaToppings{
    return self.toppings;
}



@end
