//
//  Blocks.h
//  OOP1LabTest
//
//  Created by Zachary Davison on 11/18/14.
//  Copyright (c) 2014 OO. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Blocks : NSObject

+ (void)invokeBlock:(void (^)(void))blockName;
+ (void)invokeParameterBlock:(void (^)(NSInteger parameter))blockName;
+ (NSNumber* (^)(void))returnBlock;

@end
