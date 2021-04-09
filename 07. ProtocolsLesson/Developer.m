//
//  Developer.m
//  07. ProtocolsLesson
//
//  Created by Dmytro Sayko on 01.06.2020.
//  Copyright © 2020 Dmytro Sayko. All rights reserved.
//

#import "Developer.h"

@implementation Developer

- (void) work{
    
}

#pragma mark - Patient

-(BOOL) areYouOk{
    
    BOOL ok = arc4random() % 2;
    
    NSLog(@"Is Developer %@  ok? %@", self.name, ok ? @"YES" : @"NO");
    
    return ok;
}

-(void) takePill{
    
    NSLog(@"Developer %@ takes a pill", self.name);
    
}

-(void) makeShot{
    
    NSLog(@"Developer %@ make a shot", self.name);

}

- (NSString*) howIsYouFamily{
    return @"My family is good!";;
}


@end
