//
//  ControlFlow.m
//  OOP1LabTest
//
//  Created by Zachary Davison on 11/16/14.
//  Copyright (c) 2014 OO. All rights reserved.
//

#import "ControlFlow.h"

@implementation ControlFlow

+ (NSString*)ifTest:(BOOL)x{
  if(x){
    return @"Fizz";
  }else{
    return @"Buzz";
  }
}

+ (NSArray*)forTest:(NSInteger)x{
  NSMutableArray *array = [NSMutableArray array];
  for (NSInteger i = x; i <= x+10; i++){
    [array addObject:@(i)];
  }
  return array;
}

+ (NSArray*)forInTest:(NSArray*)x{
  NSMutableArray *array = [NSMutableArray array];
  for(NSNumber *n in x){
    NSInteger integer = n.integerValue;
    [array addObject:@(integer + 1)];
  }
  return array;
}

+ (NSInteger)whileTest:(NSInteger)x{
  NSInteger count = 0;
  while(x > 1){
    x = x / 2;
    count++;
  }
  return count;
}

@end
