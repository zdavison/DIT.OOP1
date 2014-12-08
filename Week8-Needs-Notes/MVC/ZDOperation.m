//
//  ZDOperation.m
//  MVC
//
//  Created by Zachary Davison on 12/1/14.
//  Copyright (c) 2014 ZD. All rights reserved.
//

#import "ZDOperation.h"

#import <objc/runtime.h>

@interface ZDOperation()

@property (nonatomic, copy) NSString *string;

@end

@implementation ZDOperation

- (id)initWithString:(NSString*)string{
  if(self = [super init]){
    _string = string;
  }
  return self;
}

- (void)main{
  
  sleep(1);
  NSLog(@"%@",_string);
  
}

@end
