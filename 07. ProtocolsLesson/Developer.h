//
//  Developer.h
//  07. ProtocolsLesson
//
//  Created by Dmytro Sayko on 01.06.2020.
//  Copyright © 2020 Dmytro Sayko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"


NS_ASSUME_NONNULL_BEGIN

@interface Developer : NSObject <Patient>
	
@property(assign, nonatomic) float experiense;
@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) float tetst;




- (void) work;


@end

NS_ASSUME_NONNULL_END
