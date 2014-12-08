//
//  TweetCell.h
//  MVC
//
//  Created by Zachary Davison on 12/1/14.
//  Copyright (c) 2014 ZD. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TweetCellViewModel.h"

@interface TweetCell : UITableViewCell

@property (nonatomic, strong) TweetCellViewModel *viewModel;

@end
