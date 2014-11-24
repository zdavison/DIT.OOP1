//
//  ControlFlow.h
//  OOP1LabTest
//
//  Created by Zachary Davison on 11/16/14.
//  Copyright (c) 2014 OO. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ControlFlow : NSObject

+ (NSString*)ifTest:(BOOL)x;
+ (NSArray*)forTest:(NSInteger)x;
+ (NSArray*)forInTest:(NSArray*)x;
+ (NSInteger)whileTest:(NSInteger)x;

@end
