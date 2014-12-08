//
//  NetworkController.h
//  MVC
//
//  Created by Zachary Davison on 12/1/14.
//  Copyright (c) 2014 ZD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetworkController : NSObject

+ (instancetype)sharedInstance;

- (NSOperation*)fetchTweets;
- (NSOperation*)loginUser:(NSInteger)userID;
- (NSOperation*)fetchImage:(NSURL*)url;

@end
