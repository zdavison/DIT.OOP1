//
//  TweetCellViewModel.m
//  MVC
//
//  Created by Zachary Davison on 12/1/14.
//  Copyright (c) 2014 ZD. All rights reserved.
//

#import "TweetCellViewModel.h"

@implementation TweetCellViewModel

- (id)initWithModel:(Tweet*)model{
  if(self = [super init]){
    _model = model;
  }
  return self;
}

@end
