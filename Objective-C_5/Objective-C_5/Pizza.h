//
//  Pizza.h
//  Objective-C_5
//
//  Created by 佐藤亘 on 2018/04/27.
//  Copyright © 2018年 佐藤亘. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, PizzaSize){
    Small,
    Medium,
    Large
};

@interface Pizza : NSObject

@property PizzaSize size;
@property NSArray* toppings;

- (instancetype) initWithSize:(PizzaSize)size andToppings:(NSArray *)toppings;
- (NSString *) getPizzaSize;
- (NSArray *) getPizzaToppings;
- (Pizza *)largePepperoni;

@end
