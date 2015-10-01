//
//  MyDataSource.m
//  OriginateAsyncCollection-Example
//
//  Created by Philip Kluz on 10/1/15.
//  Copyright © 2015 originate.com. All rights reserved.
//

#import "MyDataSource.h"

@implementation MyDataSource

#pragma mark - MyDataSource

- (instancetype)initWithTableView:(UITableView *)tableView
{
    self = [super init];
    
    if (self) {
        [tableView registerClass:[UITableViewCell class]
          forCellReuseIdentifier:NSStringFromClass([UITableViewCell class])];
    }
    
    return self;
}

#pragma mark - <UITableViewDataSource>

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.elements.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([UITableViewCell class])];
    cell.textLabel.text = [NSString stringWithFormat:@"%@", [self elementAtIndex:indexPath.row]];
    
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self removeElementAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationLeft];
    }
}

@end