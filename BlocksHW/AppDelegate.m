//
//  AppDelegate.m
//  BlocksHW
//
//  Created by robert on 3/6/17.
//  Copyright (c) 2017 robert. All rights reserved.
//

#import "AppDelegate.h"
#import "TSStudent.h"
typedef void(^testblock3)(void);

typedef NSString* (^testBlock4)(void);


@interface AppDelegate ()

@property (copy, nonatomic) testblock3 testblock3pr;






@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
 
    NSLog(@"--------------------------Pupil-------------------  ");
    NSLog(@"----------------------------1------------------------");
    
    void (^testBlock)(void);
    testBlock = ^{
        NSLog(@"This is a simple block without any parameters");
    };
    testBlock();
    
    NSLog(@"----------------------------2-e ----------------------");
   __block NSString* testCrazyString = @"I'm a crazy string";
    
    void (^testBlockWithString) (void);
    
    testBlockWithString = ^{
     //  testCrazyString = [NSString stringWithFormat:@"I don't know what ami doing here"];
       NSLog(@"%@", testCrazyString);
    };
    testBlockWithString();
    testBlockWithString();
    
    NSLog(@"-----------------------------3-e-----------------------");
    
    
    void(^testblock3pr) (void);
    testblock3pr = ^{
        NSLog(@"the block is got and launched from the  testblock3pr method");
        
    };
    NSLog(@"-----------------------------4--------------------------");
    
    [self testBlock3Method:testblock3pr];
    
    NSLog(@"----------------------------Student----------------------");
    
    TSStudent *student1 = [[TSStudent alloc] init];
   
    TSStudent *student2 = [[TSStudent alloc] init];
    
    TSStudent *student3 = [[TSStudent alloc] init];
    TSStudent *student4 = [[TSStudent alloc] init];
    TSStudent *student5 = [[TSStudent alloc] init];
    TSStudent *student6 = [[TSStudent alloc] init];
    TSStudent *student7 = [[TSStudent alloc] init];
    TSStudent *student8 = [[TSStudent alloc] init];
    TSStudent *student9 = [[TSStudent alloc] init];
    TSStudent *student10 = [[TSStudent alloc] init];
    
    student1.name = @"Anton";
    student2.name = @"Boris";
    student3.name = @"Valery";
    student4.name = @"Elena";
    student5.name = @"Gennady";
    student6.name = @"Konst";
    student7.name = @"Harry";
    student8.name = @"John";
    student8.name = @"kelly";
    student9.name = @"Lera";
    student10.name = @"Gorad";
    
    student1.lastName = @"Konnor";
    student2.lastName = @"Herkules";
    student3.lastName = @"Konnor";
    student4.lastName = @"Minning";
    student5.lastName = @"Wales";
    student6.lastName = @"Barry";
    student7.lastName = @"Garry";
    student8.lastName = @"Grahames";
    student9.lastName = @"Hwer";
    student10.lastName = @"Wales";
    
    
    NSLog(@"---------------------Define array----------------");
    
    NSArray *studentFrieands = [[NSArray alloc] initWithObjects:
                                student1,
                                student2,
                                student3,
                                student4,
                                student5,
                                student6,
                                student7,
                                student8,
                                student9,
                                student10,
                                nil];
    
    NSLog(@"---------------------Sorting array----------------------");
    
        NSComparisonResult (^sortByName) (id, id) = ^(id obj1, id obj2) {
        
            if ([[obj1 lastName] isEqualToString: [obj2 lastName]]) {
                
                return [[obj1 name] compare:[obj2 name]];
            } else {
                
                return [[obj1 lastName] compare: [obj2 lastName]];
            }
            
        return NSOrderedAscending;
        };
    
        studentFrieands = [studentFrieands sortedArrayUsingComparator: sortByName ];
        
    for (TSStudent *student in studentFrieands) {
        NSLog(@"The are 10 brave students: %@ %@", student.name, student.lastName );
        
    };
    //studentFrieands = [studentFrieands sortedArrayUsingComparator: sortByName];
    return YES;
}

- (void) testMethod {

}

- (void) testBlock3Method: (testblock3) testblock3pr {
    
    NSLog(@"defined typedef method for block %@", testblock3pr);
    testblock3pr();
}



- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
