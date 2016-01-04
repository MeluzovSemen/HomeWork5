//
//  MSHuman.h
//  HomeWorkNumberLesson5
//
//  Created by Admin on 10.07.14.
//  Copyright (c) 2014 Semen Meluzov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MSHuman : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) float height;
@property (assign, nonatomic) float weight;
@property (assign, nonatomic) NSString* gender;

-(void) move;


@end
