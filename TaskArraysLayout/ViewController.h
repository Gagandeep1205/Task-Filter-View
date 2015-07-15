//
//  ViewController.h
//  TaskArraysLayout
//
//  Created by Gagandeep Kaur on 14/07/15.
//  Copyright (c) 2015 Gagandeep Kaur. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomTableViewCell.h"

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UIView *subcategoriesView;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIImageView *imgBackground;
@property (strong, nonatomic) NSMutableArray * arrSectionTitles;
@property (strong,nonatomic) NSMutableArray * arrSection1;
@property (strong,nonatomic) NSMutableArray * arrSection2;
@property (strong,nonatomic) NSMutableArray * arrSection3;
@property (strong,nonatomic) NSMutableArray * arrCategory1;
@property (strong,nonatomic) NSMutableArray * arrCategory3;
@property (strong,nonatomic) NSMutableArray * subarr1Category2;
@property (strong,nonatomic) NSMutableArray * subarr2Category2;
@property (strong,nonatomic) NSMutableArray * subarr3Category2;
@property (strong, nonatomic) NSMutableDictionary * dicSection2;

@end

