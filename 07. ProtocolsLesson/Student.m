//
//  Student.m
//  07. ProtocolsLesson
//
//  Created by Dmytro Sayko on 01.06.2020.
//  Copyright © 2020 Dmytro Sayko. All rights reserved.
//

#import "Student.h"

@implementation Student

- (void) study{
    
}

#pragma mark - Patient

-(BOOL) areYouOk{
    
    BOOL ok = arc4random() % 2;
    
    NSLog(@"Is Student %@  ok? %@", self.name, ok ? @"YES" : @"NO");
    
    return ok;
}

-(void) takePill{
    
    NSLog(@"Student %@ takes a pill", self.name);
    
}

-(void) makeShot{
    
    NSLog(@"Student  %@ make a shot", self.name);

}

- (NSString*) howIsYouJob{
    return @"My job is awesome!";;
}

@end
