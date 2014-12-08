//
//  VerticalProgressView.m
//  MVC
//
//  Created by Zachary Davison on 12/1/14.
//  Copyright (c) 2014 ZD. All rights reserved.
//

#import "EllipseView.h"
@import QuartzCore;

@implementation EllipseView

- (void)drawRect:(CGRect)rect{
  CGContextRef ctx = UIGraphicsGetCurrentContext();
  CGContextSetFillColorWithColor(ctx, [UIColor redColor].CGColor);
  CGContextFillEllipseInRect(ctx, rect);
  
  CGContextMoveToPoint(ctx, 0, 0);
  CGContextAddLineToPoint(ctx, 100, 0);
  CGContextAddLineToPoint(ctx, 100, 100);
  CGContextAddLineToPoint(ctx, 0, 100);
  CGContextAddLineToPoint(ctx, 0, 0);
  
}

@end
