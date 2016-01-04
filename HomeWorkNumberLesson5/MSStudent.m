//
//  MSStudent.m
//  HomeWorkNumberLesson5
//
//  Created by Admin on 10.07.14.
//  Copyright (c) 2014 Semen Meluzov. All rights reserved.
//

#import "MSStudent.h"

@implementation MSStudent

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"Semen";
        self.height = 1.65f;
        self.weight = 60.f;
        self.gender = @"male";
        self.condition = @"Вечно спящий и голодный";
        self.age = 19;
    }
    return self;
}

- (void) exams{
    NSLog(@"\t- Semen, как экзамены?");
    NSLog(@"\t- Мочу сдал, кровь сдал, кал тоже сдал. Арифметику не сдал.");
}


@end
