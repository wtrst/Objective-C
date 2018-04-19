//
//  Box.m
//  Objective-C_2
//
//  Created by 佐藤亘 on 2018/04/18.
//  Copyright © 2018年 佐藤亘. All rights reserved.
//

#import "Box.h"

@interface Box()

@end

@implementation Box

# pragma mark - Constructor
- (instancetype) initWithHeight:(float)height andWidth:(float)width andLength:(float)length {
    self = [super init];
    if(self) {
        self.height = height;
        self.width = width;
        self.length = length;
    }
    
    return self;
}

# pragma mark - Methods
- (float) calculateVolume {
    return self.height * self.width * self.length;
}

- (float) compareVolume:(float)anotherVol{
    return self.calculateVolume / anotherVol;
}

@end
