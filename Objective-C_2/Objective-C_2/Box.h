//
//  Box.h
//  Objective-C_2
//
//  Created by 佐藤亘 on 2018/04/18.
//  Copyright © 2018年 佐藤亘. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

# pragma mark - Public properties
@property float height;
@property float width;
@property float length;

# pragma mark - Public Methods
- (instancetype) initWithHeight:(float)height andWidth:(float)width andLength:(float)length;
- (float) calculateVolume;
- (float) compareVolume:(float)anotherVol;

@end
