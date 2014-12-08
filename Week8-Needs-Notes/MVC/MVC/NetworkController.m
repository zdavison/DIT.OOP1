//
//  NetworkController.m
//  MVC
//
//  Created by Zachary Davison on 12/1/14.
//  Copyright (c) 2014 ZD. All rights reserved.
//

#import "NetworkController.h"

@implementation NetworkController

+ (instancetype)sharedInstance {
  static NetworkController *sharedInstance = nil;
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    sharedInstance = [[self alloc] init];
  });
  return sharedInstance;
}

- (NSOperation*)fetchTweets{
  return nil;
}

- (NSOperation *)loginUser:(NSInteger)userID{
  return nil;
}

- (NSOperation*)fetchImage:(NSURL*)url{
  return nil;
}

@end
