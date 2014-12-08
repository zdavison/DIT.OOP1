//
//  TweetViewModel.h
//  MVC
//
//  Created by Zachary Davison on 12/1/14.
//  Copyright (c) 2014 ZD. All rights reserved.
//

@import Foundation;
@import UIKit;
#import "Tweet.h"

@interface TweetViewModel : NSObject

@property (nonatomic, strong) Tweet *model;

@property (nonatomic, readonly) UIImage *image;
@property (nonatomic, readonly) NSString *titleString;

- (id)initWithModel:(Tweet*)model;

@end
