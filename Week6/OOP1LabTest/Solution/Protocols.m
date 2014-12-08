//
//  Protocols.m
//  OOP1LabTest
//
//  Created by Zachary Davison on 11/18/14.
//  Copyright (c) 2014 OO. All rights reserved.
//

#import "Protocols.h"
#import "TestProtocol.h"
#import "EmptyProtocol.h"

@implementation Protocols

+ (id)implementsEmptyProtocol{
  return [[EmptyProtocolImpl alloc] init];
}

+ (id)conformsToTestProtocol{
  return [[TestProtocolImpl alloc] init];
}

+ (id)conformsToTableViewDataSource{
  return [[TableViewDataSource alloc] init];
}

@end

#pragma mark EmptyProtocol

@implementation EmptyProtocolImpl

@end

#pragma mark TestProtocol

@implementation TestProtocolImpl

+ (NSInteger)someInteger{
  return 0;
}

@end

#pragma mark TableViewDataSource

@implementation TableViewDataSource

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
  return nil;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
  return 0;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
  return 0;
}

@end
