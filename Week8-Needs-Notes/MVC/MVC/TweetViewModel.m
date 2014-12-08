//
//  TweetViewModel.m
//  MVC
//
//  Created by Zachary Davison on 12/1/14.
//  Copyright (c) 2014 ZD. All rights reserved.
//

#import "TweetViewModel.h"

@implementation TweetViewModel

- (id)initWithModel:(Tweet*)model{
  if(self = [super init]){
    _model = model;
  }
  return self;
}

- (NSString*)titleString{
  return [NSString stringWithFormat:@"%@ > %@",_model.username, _model.body];
}

- (UIImage*)image{
  if([_model.username containsString:@"a"]) { return [UIImage imageNamed:@"a_user.png"]; }
  if([_model.username containsString:@"z"]) { return [UIImage imageNamed:@"z_user.png"]; }
  return nil;
}

@end