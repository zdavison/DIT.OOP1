//
//  TweetsViewController.m
//  MVC
//
//  Created by Zachary Davison on 12/1/14.
//  Copyright (c) 2014 ZD. All rights reserved.
//

#import "TweetsViewController.h"
#import "TweetCellViewModel.h"
#import "TweetCell.h"

@interface TweetsViewController()

@property (nonatomic, strong) NSArray *tweetViewModels;

@end

@implementation TweetsViewController

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
  
  TweetCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TweetCell"];
  TweetCellViewModel *viewModel = _tweetViewModels[indexPath.row];
  cell.viewModel = viewModel;
  
  return cell;
  
}

@end
