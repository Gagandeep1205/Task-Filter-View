//
//  ViewController.m
//  UISearchBar Implementation
//
//  Created by Gagandeep Kaur on 21/07/15.
//  Copyright (c) 2015 Gagandeep Kaur. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
NSString *filterText;
NSRange *range;
@interface ViewController ()

@end

@implementation ViewController


-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if(_isFiltered == TRUE){
        if (_arrFilteredItems.count==0) {
             NSLog(@"No Content Found");
            return [_arrFilteredItems count];
        }
        else
        return [_arrFilteredItems count];
    }
    else
    return [_arrItems count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if(_isFiltered == TRUE){
        cell.labelName.text = [_arrFilteredItems objectAtIndex:indexPath.row];
      //  NSMutableAttributedString *str = [[NSMutableAttributedString alloc] initWithString:@"" attributes:nil];
//        str addAttribute:(NSString *) value:<#(id)#> range:(NSRange)
        
    }
    else{
   
    cell.labelName.text = [_arrItems objectAtIndex:indexPath.row];
    }
    return cell;
    
}
-(void) initArray {
    
    _arrItems = [[NSMutableArray alloc]initWithObjects:@"Kunal Gupta",@"Rashmi",@"Anshul",@"Samarpreet",@"Anchit",@"Gagan",@"Avi",@"Rajat",@"Navit Chepu",@"Priyanka",@"Binit",@"Gurpreet",@"Binitsdasd",@"Bigff",@"Mukesh" ,@"Japinder",@"Aseem",@"Savita",nil];
  
}

-(void)searchBar:(UISearchBar*)searchBar textDidChange:(NSString*)text
{
    
    if(text.length == 0)
    {
        _isFiltered = FALSE;
      
    }
    else
    {
         _isFiltered = TRUE;
        _arrFilteredItems = [[NSMutableArray alloc] init];
        filterText = [[NSString alloc]init];
        filterText = text;
        for(int i = 0 ; i < _arrItems.count ;i++) {
            
            if([[_arrItems objectAtIndex:i] containsString:text ]) {
                
            [_arrFilteredItems addObject:[_arrItems objectAtIndex:i]];
        }
    }
}
    
    [self.tableView reloadData];
}

-(void) searchBarTextDidBeginEditing:(UISearchBar *)searchBar{
    searchBar.autocapitalizationType = UITextAutocapitalizationTypeWords;
}



- (void)viewDidLoad {
    [super viewDidLoad];
   // _isFiltered = [B]
    [_tableView setTableFooterView:[UIView new]];
    [self initArray];
    _searchBar.delegate = (id)self;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
