//
//  Protocols.h
//  OOP1LabTest
//
//  Created by Zachary Davison on 11/18/14.
//  Copyright (c) 2014 OO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "TestProtocol.h"
#import "EmptyProtocol.h"

@interface Protocols : NSObject

+ (id)implementsEmptyProtocol;
+ (id)conformsToTestProtocol;
+ (id)conformsToTableViewDataSource;

@end

@interface EmptyProtocolImpl : NSObject <EmptyProtocol>

@end

@interface TestProtocolImpl : NSObject <TestProtocol>

@end

@interface TableViewDataSource : NSObject <UITableViewDataSource>

@end
