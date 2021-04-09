//
//  Dancer.m
//  07. ProtocolsLesson
//
//  Created by Dmytro Sayko on 01.06.2020.
//  Copyright © 2020 Dmytro Sayko. All rights reserved.
//

#import "Dancer.h"

@implementation Dancer

- (void) dance{
    
}

#pragma mark - Patient

-(BOOL) areYouOk{
    
    BOOL ok = arc4random() % 2;
    
    NSLog(@"Is Dancer %@  ok? %@", self.name, ok ? @"YES" : @"NO");
    
    return ok;
}

-(void) takePill{
    
    NSLog(@"Dancer %@ takes a pill", self.name);
    
}

-(void) makeShot{
    
    NSLog(@"Dancer %@ make a shot", self.name);

    
}
@end
