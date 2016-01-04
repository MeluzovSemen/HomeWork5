//
//  MSAppDelegate.m
//  HomeWorkNumberLesson5
//
//  Created by Admin on 10.07.14.
//  Copyright (c) 2014 Semen Meluzov. All rights reserved.
//

#import "MSAppDelegate.h"
#import "MSHuman.h"
#import "MSCyclist.h"
#import "MSCyclist.h"
#import "MSRunner.h"
#import "MSSwimmer.h"
#import "MSStudent.h"
#import "MSAnimal.h"
#import "MSRabbit.h"
#import "MSDog.h"
@implementation MSAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    MSHuman* human = [[MSHuman alloc] init];
    MSCyclist* cyclist = [[MSCyclist alloc] init];
    MSRunner* runner = [[MSRunner alloc] init];
    MSSwimmer* swimmer = [[MSSwimmer alloc] init];
    MSStudent* student = [[MSStudent alloc] init];
    MSRabbit* rabbit = [[MSRabbit alloc] init];
    MSDog* dog = [[MSDog alloc] init];    
    
    human.name = @"Artur";
    human.height = 1.78f;
    human.weight = 72.5f;
    human.gender = @"male";
    
    cyclist.name = @"Lance";
    cyclist.height = 1.75f;
    cyclist.weight = 62.f;
    cyclist.gender = @"male";
    
    runner.name = @"Usain Bolt";
    runner.height = 1.92f;
    runner.weight = 85.f;
    runner.gender = @"male";
    
    swimmer.name = @"Julia";
    swimmer.height = 1.7f;
    swimmer.weight = 55.f;
    swimmer.gender = @"female";
    
    NSArray* arrayHumans = [NSArray arrayWithObjects:human, cyclist, runner, swimmer, student, nil];
    NSArray* arrayAnimals = [NSArray arrayWithObjects:rabbit, dog, nil];
    
    int numberOfHuman = 0;
    int numberOfAnimal = 0;
    
    for (int i=0; i<[arrayHumans count]; i++ )
    {
        MSHuman* people = [arrayHumans objectAtIndex: numberOfHuman];
        
        if (numberOfAnimal < [arrayAnimals count])
        {
            MSAnimal* animals = [arrayAnimals objectAtIndex:numberOfAnimal];
            NSLog(@"Я НЕ ЧЕЛОВЕК");
            NSLog(@"Кличка - %@", animals.nickname);
            NSLog(@"\tМаксимальная скорость - %dкм/ч", animals.maxspeed);
            NSLog(@"\tЧто кушает - %@", animals.food);
            [animals move];
            NSLog(@" ");
        numberOfAnimal++;
        }
            NSLog(@"Я ЧЕЛОВЕК");
        if ([people isKindOfClass:[MSStudent class]])
        {
            MSStudent* stud = (MSStudent*) people;
            NSLog(@"Имя - %@", stud.name);
            NSLog(@"\tВозраст - %d", stud.age);
            NSLog(@"\tРост - %.2fм", stud.height);
            NSLog(@"\tВес - %.2fкг", stud.weight);
            NSLog(@"\tПол - %@", stud.gender);
            NSLog(@"\tСостояние - %@", stud.condition);
            [stud move];
            NSLog(@" ");
            [stud exams];
            NSLog(@" ");
        }
        else
        {
        NSLog(@"Имя - %@", people.name);
        NSLog(@"\tРост - %.2fм", people.height);
        NSLog(@"\tВес - %.2fкг", people.weight);
        NSLog(@"\tПол - %@", people.gender);
        [people move];
        NSLog(@" ");
        }
        numberOfHuman++;
    }
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
