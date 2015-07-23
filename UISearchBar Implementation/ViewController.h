//
//  ViewController.h
//  UISearchBar Implementation
//
//  Created by Gagandeep Kaur on 21/07/15.
//  Copyright (c) 2015 Gagandeep Kaur. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource , UISearchBarDelegate, UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UILabel *labelName;
@property (strong,nonatomic) NSMutableArray *arrItems;
@property (strong,nonatomic) NSMutableArray *arrFilteredItems;
@property (weak, nonatomic) IBOutlet UILabel *labelNoMatch;
@property (assign) bool isFiltered;
@end

