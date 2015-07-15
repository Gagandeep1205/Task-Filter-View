//
//  CustomTableViewCell.h
//  TaskArraysLayout
//
//  Created by Gagandeep Kaur on 15/07/15.
//  Copyright (c) 2015 Gagandeep Kaur. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CustomTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *labelCategory;
@property (weak, nonatomic) IBOutlet UILabel *labelSubcategory;
@property (weak, nonatomic) IBOutlet UIView *subcategoriesView;

@end
