//
//  TweetViewController.m
//  MVC
//
//  Created by Zachary Davison on 12/1/14.
//  Copyright (c) 2014 ZD. All rights reserved.
//

#import "TweetViewController.h"
#import "TweetViewModel.h"

@interface TweetViewController()

@property (nonatomic, strong) TweetViewModel *viewModel;

@end

@implementation TweetViewController

- (void)setViewModel:(TweetViewModel *)viewModel{
  
  _viewModel = viewModel;
  
  _imageView.image = viewModel.image;
  _titleLabel.text = viewModel.titleString;
  
}

@end
