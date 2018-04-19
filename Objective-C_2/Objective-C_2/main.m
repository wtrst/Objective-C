//
//  main.m
//  Objective-C_2
//
//  Created by 佐藤亘 on 2018/04/18.
//  Copyright © 2018年 佐藤亘. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Box *box1 = [[Box alloc] initWithHeight:10.2 andWidth:11.7 andLength:15.8];
        Box *box2 = [[Box alloc] initWithHeight:6.2 andWidth:5.9 andLength:4.1];
        Box *box3 = [[Box alloc] initWithHeight:11.5 andWidth:18.3 andLength:9.0];
        
        float volume1 = [box1 calculateVolume];
        float volume2 = [box2 calculateVolume];
        float volume3 = [box3 calculateVolume];
        
        printf("***** Volume of each boxes *****\n");
        NSLog(@"Volume of Box1 is %f", volume1);
        NSLog(@"Volume of Box2 is %f", volume2);
        NSLog(@"Volume of Box3 is %f", volume3);
        
        printf("\n***** Compare volumes *****\n");
        NSLog(@"Box1 is %f times a big as Box2", [box1 compareVolume:volume2]);
        NSLog(@"Box1 is %f times a big as Box3", [box1 compareVolume:volume3]);
        NSLog(@"Box2 is %f times a big as Box3", [box2 compareVolume:volume3]);
    }
    return 0;
}
