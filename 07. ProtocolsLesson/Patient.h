//
//  Patient.h
//  07. ProtocolsLesson
//
//  Created by Dmytro Sayko on 01.06.2020.
//  Copyright © 2020 Dmytro Sayko. All rights reserved.
//

#import <Foundation/Foundation.h>
 
@protocol Patient <NSObject>

@required
@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) float tetst;
-(BOOL) areYouOk;
-(void) takePill;
-(void) makeShot;

@optional
-(NSString*) howIsYouFamily;
-(NSString*) howIsYouJob;


@end
