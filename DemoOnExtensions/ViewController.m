//
//  ViewController.m
//  DemoOnExtensions
//
//  Created by volive solutions on 02/08/18.
//  Copyright © 2018 volive solutions. All rights reserved.
//

#import "ViewController.h"
#import "MyTableViewCell.h"

@interface ViewController (){
     MyTableViewCell *namesCell;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _namesArray = [[NSMutableArray alloc]initWithObjects:@"Ramu",@"raj",@"mahesh",@"kumar",@"surya", nil];
 
    
}

#pragma tableview delegate methods

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _namesArray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    namesCell = [_myTableView dequeueReusableCellWithIdentifier:@"MyTableViewCell" forIndexPath:indexPath];
    namesCell.name_lbl.text = [_namesArray objectAtIndex:indexPath.row];
    
    
    return namesCell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
