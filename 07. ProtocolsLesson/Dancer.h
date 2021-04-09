//
//  Dancer.h
//  07. ProtocolsLesson
//
//  Created by Dmytro Sayko on 01.06.2020.
//  Copyright © 2020 Dmytro Sayko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"


NS_ASSUME_NONNULL_BEGIN

@interface Dancer : NSObject <Patient>

@property(strong, nonatomic) NSString* favoriteDance;
@property (strong, nonatomic) NSString* name;


- (void) dance;

@end

NS_ASSUME_NONNULL_END
