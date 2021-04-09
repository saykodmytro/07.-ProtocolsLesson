//
//  Student.h
//  07. ProtocolsLesson
//
//  Created by Dmytro Sayko on 01.06.2020.
//  Copyright © 2020 Dmytro Sayko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"


NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject <Patient>

@property(strong, nonatomic) NSString* university;
@property (strong, nonatomic) NSString* name;


- (void) study;

@end

NS_ASSUME_NONNULL_END
