//
//  ViewController.m
//  MVC
//
//  Created by Zachary Davison on 12/1/14.
//  Copyright (c) 2014 ZD. All rights reserved.
//

#import "ViewController.h"
#import "NetworkController.h"
#import "Tweet.h"
#import "ZDOperation.h"

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray *tweets;

@end

@implementation ViewController

- (void)viewDidLoad{
  
  NSOperationQueue *queue = [[NSOperationQueue alloc] init];
  queue.maxConcurrentOperationCount = 1;
  ZDOperation *operation1 = [[ZDOperation alloc] initWithString:@"First"];
  ZDOperation *operation2 = [[ZDOperation alloc] initWithString:@"Second"];
  ZDOperation *operation3 = [[ZDOperation alloc] initWithString:@"Third"];
  [queue addOperation:operation1];
  [queue addOperation:operation2];
  [queue addOperation:operation3];
}

@end
