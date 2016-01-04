//
//  MSRabbit.m
//  HomeWorkNumberLesson5
//
//  Created by Admin on 11.07.14.
//  Copyright (c) 2014 Semen Meluzov. All rights reserved.
//

#import "MSRabbit.h"

@implementation MSRabbit

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.nickname = @"Bunny";
        self.maxspeed = 56;
        self.food = @"Травоядный";
        
    }
    return self;
}

- (void) move {
    NSLog(@"\tПрыгать Прыгать Прыгать");
}

@end
