//
//  ViewController.h
//  DemoOnExtensions
//
//  Created by volive solutions on 02/08/18.
//  Copyright © 2018 volive solutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *myTableView;
@property NSMutableArray *namesArray;
@end

