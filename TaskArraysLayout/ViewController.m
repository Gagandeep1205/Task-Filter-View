//
//  ViewController.m
//  TaskArraysLayout
//
//  Created by Gagandeep Kaur on 14/07/15.
//  Copyright (c) 2015 Gagandeep Kaur. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initialiseData];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - data arrays and dictionaries
//initialisation of data
-(void) initialiseData{
    
    _imgBackground.image = [UIImage imageNamed:@"nature-wallpapers-1.jpg"];
    _arrSectionTitles = [NSMutableArray arrayWithObjects:@"This is the title for the first section",@"Title for the second section", @"here is the final section", nil];
    _arrSection1 = [NSMutableArray arrayWithObjects:@"Post Type", nil];
    _arrSection2 = [NSMutableArray arrayWithObjects:@"Look Type",@"Eyes",@"Nails", nil];
    _arrSection3 = [NSMutableArray arrayWithObjects:@"Products", nil];
    _arrCategory1 = [NSMutableArray arrayWithObjects:@"FOTD/MOTD",@"  Hair",@"  Before/After",@"  Product",@"  Nails", nil];
    _subarr1Category2 = [NSMutableArray arrayWithObjects:@"Weekend",@"  Prom",@"  Bridal",@"  Work",@"  Party/Night out",@"  Natural",@"  EveryDay",@"  Hallowen",@"  SFX",nil];
    _subarr2Category2 = [NSMutableArray arrayWithObjects:@"Smokey",@"  Maskara",@"  CAT",@"  Glitter",@"  Wringlled Liner",@"  Lashes",@"  Mascara",@"  Party Eyes",@"  ABC makeup", nil];
    _subarr3Category2 = [NSMutableArray arrayWithObjects:@"Nail Art",@"  Colouring",@"  Glitter", nil];
    _arrCategory3 = [NSMutableArray arrayWithObjects:@"Brushes",@"  HairBrushes",@"  Pencils",@"  Liners",@"  eye-shadow",@"  Scrub",@"  clips",@"  nailpaints",@"  pins",@"  abc",@"  Brushes",@"  HairBrushes",@"  Pencils",@"  Liners",@"  eye-shadow",@"  Scrub",@"  clips",@"  nailpaints", nil];
    _dicSection2 = [[NSMutableDictionary alloc]init];
    [_dicSection2 setObject:_subarr1Category2 forKey:@"Look Type"];
    [_dicSection2 setObject:_subarr2Category2 forKey:@"Eyes"];
    [_dicSection2 setObject:_subarr3Category2 forKey:@"Nails"];
}

#pragma mark - tableview delegates and datasources

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [_arrSectionTitles count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0 ) {
        return 1;
        
    }
    else if (section == 1){
        return 3;
    }
    else
        return 1;
}

//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;
//{
//    //NSString *text = [DescArr objectAtIndex:[indexPath row]];
//    //CGSize constraint = CGSizeMake(CELL_CONTENT_WIDTH - (CELL_CONTENT_MARGIN * 2), 20000.0f);
//    CGSize size = [text sizeWithFont:[UIFont systemFontOfSize:FONT_SIZE] constrainedToSize:constraint lineBreakMode:UILineBreakModeWordWrap];
//    CGFloat height = MAX(size.height, 100.0);
//    return height;
//}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return [_arrSectionTitles objectAtIndex:section];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CustomTableViewCell"];
    
    if(indexPath.section == 0){
        
        cell.labelCategory.text = [_arrSection1 objectAtIndex:indexPath.row];
        NSInteger items = [_arrCategory1 count];
        NSString * text = [NSString stringWithFormat:@"%@",[_arrCategory1 objectAtIndex:0]];
        for (int i = 0; i< items-1; i++) {
            text = [text stringByAppendingString:[_arrCategory1 objectAtIndex:i+1]];
        }
        cell.labelSubcategory.text = text;
        
    }
    else if (indexPath.section == 1){
        
        cell.labelCategory.text = [_arrSection2 objectAtIndex:indexPath.row];
        if (indexPath.row == 0) {
            NSInteger items = [_subarr1Category2 count];
            NSString * text = [NSString stringWithFormat:@"%@",[_subarr1Category2 objectAtIndex:0]];
            for (int i = 0; i< items-1; i++) {
                text = [text stringByAppendingString:[_subarr1Category2 objectAtIndex:i+1]];
                cell.labelSubcategory.text = text;
            }
        }
        else if (indexPath.row == 1){
            NSInteger items = [_subarr2Category2 count];
            NSString * text = [NSString stringWithFormat:@"%@",[_subarr2Category2 objectAtIndex:0]];
            for (int i = 0; i< items-1; i++) {
                text = [text stringByAppendingString:[_subarr2Category2 objectAtIndex:i+1]];
                cell.labelSubcategory.text = text;
            }
        }
        else {
            NSInteger items = [_subarr3Category2 count];
            NSString * text = [NSString stringWithFormat:@"%@",[_subarr3Category2 objectAtIndex:0]];
            for (int i = 0; i< items-1; i++) {
                text = [text stringByAppendingString:[_subarr3Category2 objectAtIndex:i+1]];
                cell.labelSubcategory.text = text;
            }
        }
    }
    else {
        
        cell.labelCategory.text = [_arrSection3 objectAtIndex:indexPath.row];
        NSInteger items = [_arrCategory3 count];
        NSString * text = [NSString stringWithFormat:@"%@",[_arrCategory3 objectAtIndex:0]];
        for (int i = 0; i< items-1; i++) {
            text = [text stringByAppendingString:[_arrCategory3 objectAtIndex:i+1]];
        }
        cell.labelSubcategory.text = text;
    }
    
    
    
    return cell;
}


//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CustomTableViewCell"];
//    
//    if(indexPath.section == 0){
//        cell.labelCategory.text = [_arrSection1 objectAtIndex:indexPath.row];
//        UILabel *row1 = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 200, 20)];
//        [cell.subcategoriesView addSubview:row1];
//        row1.textColor = [UIColor whiteColor];
//        row1.font = [UIFont boldSystemFontOfSize:12];
//        row1.text = [NSString stringWithFormat:@"%@  %@  %@",[_arrCategory1 objectAtIndex:0],[_arrCategory1 objectAtIndex:1],[_arrCategory1 objectAtIndex:2]];
//        UILabel *row2 = [[UILabel alloc]initWithFrame:CGRectMake(0, 40, 200, 20)];
//        [cell.subcategoriesView addSubview:row2];
//        row2.textColor = [UIColor whiteColor];
//        row2.font = [UIFont boldSystemFontOfSize:12];
//        row2.text = [NSString stringWithFormat:@"%@  %@",[_arrCategory1 objectAtIndex:3],[_arrCategory1 objectAtIndex:4]];
//    }
//   else if (indexPath.section == 1){
//        
//        cell.labelCategory.text = [_arrSection2 objectAtIndex:indexPath.row];
//       UILabel *row1 = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 200, 20)];
//       [cell.subcategoriesView addSubview:row1];
//       row1.textColor = [UIColor whiteColor];
//       row1.font = [UIFont boldSystemFontOfSize:12];
//       row1.text = [NSString stringWithFormat:@"%@  %@  %@",[_subarr1Category2 objectAtIndex:0],[_subarr1Category2 objectAtIndex:1],[_subarr1Category2 objectAtIndex:2]];
//       UILabel *row2 = [[UILabel alloc]initWithFrame:CGRectMake(0, 40, 200, 20)];
//       [cell.subcategoriesView addSubview:row2];
//       row2.textColor = [UIColor whiteColor];
//       row2.font = [UIFont boldSystemFontOfSize:12];
//       row2.text = [NSString stringWithFormat:@"%@  %@  %@",[_subarr1Category2 objectAtIndex:3],[_subarr1Category2 objectAtIndex:4],[_subarr1Category2 objectAtIndex:5]];
//       UILabel *row3 = [[UILabel alloc]initWithFrame:CGRectMake(0, 40, 200, 20)];
//       [cell.subcategoriesView addSubview:row3];
//       row3.textColor = [UIColor whiteColor];
//       row3.font = [UIFont boldSystemFontOfSize:12];
//       row3.text = [NSString stringWithFormat:@"%@  %@  %@",[_subarr1Category2 objectAtIndex:6],[_subarr1Category2 objectAtIndex:7],[_subarr1Category2 objectAtIndex:8]];
//        }
//    else {
//        
//        cell.labelCategory.text = [_arrSection3 objectAtIndex:indexPath.row];
//     
//    }
//    
//    
//           
//       return cell;
//}
//@end




//
//-(void) ShowData : (NSArray *) arrayOfArrays{
//    NSArray * arrShowData = arrayOfArrays;
//    int subrows = [arrShowData count]%3 +1;
//    int elementsInLastRow = [arrShowData count]/3;
//    
//    int k = 0;
//    int y = 0;
//    for (int i = 0; i< subrows-1; i++) {
//        UILabel * subrow = [[UILabel alloc]initWithFrame:CGRectMake(0,y, 200, 20)];
//        
//        subrow.textColor = [UIColor whiteColor];
//        subrow.font = [UIFont boldSystemFontOfSize:12];
//        subrow.text = [NSString stringWithFormat:@"%@ %@ %@",[arrShowData objectAtIndex:k],[arrShowData objectAtIndex:k+1],[arrShowData objectAtIndex:k+2]];
//        k = k+3;
//        y = y+20;
//    }
//    
//    if (elementsInLastRow == 1){
//        
//        UILabel * subrow2 = [[UILabel alloc]initWithFrame:CGRectMake(0,y, 200, 20)];
//        
//        subrow2.textColor = [UIColor whiteColor];
//        subrow2.text = [NSString stringWithFormat:@"%@",[arrShowData objectAtIndex:k]];
//        subrow2.font = [UIFont boldSystemFontOfSize:12];
//    }
//    else if (elementsInLastRow == 2){
//        
//        UILabel * subrow2 = [[UILabel alloc]initWithFrame:CGRectMake(0,y, 200, 20)];
//        
//        subrow2.textColor = [UIColor whiteColor];
//        subrow2.text = [NSString stringWithFormat:@"%@%@",[arrShowData objectAtIndex:k],[arrShowData objectAtIndex:k+1]];
//        subrow2.font = [UIFont boldSystemFontOfSize:12];
//    }
//
//
//}
@end
