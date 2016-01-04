//
//  MSAnimal.h
//  HomeWorkNumberLesson5
//
//  Created by Admin on 11.07.14.
//  Copyright (c) 2014 Semen Meluzov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MSAnimal : NSObject

@property (strong, nonatomic) NSString* nickname;
@property (assign, nonatomic) int maxspeed;
@property (strong, nonatomic) NSString* food;

- (void) move;


@end
