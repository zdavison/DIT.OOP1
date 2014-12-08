//
//  TweetCellViewModel.h
//  MVC
//
//  Created by Zachary Davison on 12/1/14.
//  Copyright (c) 2014 ZD. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tweet.h"

@interface TweetCellViewModel : NSObject

@property (nonatomic, strong) Tweet *model;

- (id)initWithModel:(Tweet*)model;

@end
