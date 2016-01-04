//
//  MSStudent.h
//  HomeWorkNumberLesson5
//
//  Created by Admin on 10.07.14.
//  Copyright (c) 2014 Semen Meluzov. All rights reserved.
//

#import "MSHuman.h"

@interface MSStudent : MSHuman

@property (strong, nonatomic) NSString* condition;
@property (assign, nonatomic) int age;

- (void) exams;

@end
