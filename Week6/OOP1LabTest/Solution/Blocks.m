//
//  Blocks.m
//  OOP1LabTest
//
//  Created by Zachary Davison on 11/18/14.
//  Copyright (c) 2014 OO. All rights reserved.
//

#import "Blocks.h"

typedef void (^BlockType)(void);

@interface Blocks()

@property (nonatomic, assign) NSInteger myInteger;
@property (nonatomic, strong) BlockType myBlock;

@end

@implementation Blocks

+ (void)invokeBlock:(void (^)(void))blockName{
  blockName();
}

+ (void)invokeParameterBlock:(void (^)(NSInteger parameter))blockName{
  blockName(0);
}

+ (NSNumber* (^)(void))returnBlock{
  return ^{ return @5; };
}

@end
