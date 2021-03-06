//
//  MyDataSource.h
//  OriginateRemoteCollection-Example
//
//  Created by Philip Kluz on 10/1/15.
//  Copyright © 2015 originate.com. All rights reserved.
//

@import UIKit;
@import OriginateRemoteCollection;
@import DZNEmptyDataSet;

@interface MyDateDataSource : OriginateMutableRemoteArray <UITableViewDataSource,
                                                           UITableViewDelegate>

#pragma mark - Properties
- (instancetype)initWithTableView:(UITableView *)tableView;

@end
