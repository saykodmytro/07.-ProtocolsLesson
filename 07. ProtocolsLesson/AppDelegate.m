//
//  AppDelegate.m
//  07. ProtocolsLesson
//
//  Created by Dmytro Sayko on 01.06.2020.
//  Copyright © 2020 Dmytro Sayko. All rights reserved.
//

#import "AppDelegate.h"
#import "Patient.h"
#import "Developer.h"
#import "Dancer.h"
#import "Student.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    Dancer* dancer1 = [[Dancer alloc] init];
    Dancer* dancer2 = [[Dancer alloc] init];
    
    Student* student1 = [[Student alloc] init];
    Student* student2 = [[Student alloc] init];
    Student* student3 = [[Student alloc] init];
    
    Developer* developer1 = [[Developer alloc] init];
    
    dancer1.name = @"dancer1";
    dancer2.name = @"dancer2";
    student1.name = @"student1";
    student2.name = @"student2";
    student3.name = @"student3";
    developer1.name = @"developer1";

    NSObject* fake = [[NSObject alloc] init];
    
    NSArray* patients = [NSArray arrayWithObjects:fake, dancer1, dancer2, student1, student2, student3, developer1, nil];

    
    for (id <Patient> patient in patients) {
        
        if ([patient conformsToProtocol:@protocol(Patient)]) {
            NSLog(@"Patient name = %@", patient.name);
            
            if ([patient respondsToSelector:@selector(howIsYouFamily)]) {
                NSLog(@"How is your family? \n%@", [patient howIsYouFamily]);
            }
            
            if ([patient respondsToSelector:@selector(howIsYouJob)]) {
                NSLog(@"How is your job? \n%@", [patient howIsYouJob]);
            }
            
                if (![patient areYouOk]) {
                
                [patient takePill];
                
                if (![patient areYouOk]) {
                    
                    [patient makeShot];
            }
        }

        } else {
            NSLog(@"Fake!!!");
        }
        
        
    }
    
    
    
    
    
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
