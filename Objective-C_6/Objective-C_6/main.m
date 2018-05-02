//
//  main.m
//  Objective-C_6
//
//  Created by 佐藤亘 on 2018/05/01.
//  Copyright © 2018年 佐藤亘. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodTruck.h"
#import "Cook.h"
#import "AnotherCook.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FoodTruck *truckA = [[FoodTruck alloc] initWithName:@"Take a Bao" andFoodType:@"bao"];
        
        FoodTruck *truckB = [[FoodTruck alloc] initWithName:@"Tim Shortons" andFoodType:@"shortbread"];
        
        // create instances of your delegate class
        // set truckA and truckB's delegate to your new instance.
        
        [truckA serve:10];
        [truckB serve:5];
        
        [truckA cashOut];
        [truckB cashOut];
        
        Cook *cook = [[Cook alloc] init];
        [truckA setDelegate:cook];
        AnotherCook *another = [[AnotherCook alloc] init];
        [truckB setDelegate:another];
        
        [truckA.delegate foodTruck:truckA priceForFood:@"12"];
        [truckB.delegate foodTruck:truckB priceForFood:@"14"];
    }
    return 0;
}
