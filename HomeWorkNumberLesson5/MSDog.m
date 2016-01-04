//
//  MSDog.m
//  HomeWorkNumberLesson5
//
//  Created by Admin on 11.07.14.
//  Copyright (c) 2014 Semen Meluzov. All rights reserved.
//

#import "MSDog.h"

@implementation MSDog
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.nickname = @"Rex";
        self.maxspeed = 63;
        self.food = @"Хищник";
    }
    return self;
}

- (void) move {
    NSLog(@"\tБегать Бегать чуть-чуть лаять Бегать");
}

@end
