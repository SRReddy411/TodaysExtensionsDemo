//
//  TodayViewController.h
//  DemoTodaysExtensions
//
//  Created by volive solutions on 02/08/18.
//  Copyright © 2018 volive solutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TodayViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITableView *extensionTableView;
@property (strong, nonatomic) IBOutlet UIButton *showMoreBtn;
- (IBAction)showMoreBtn_Action:(id)sender;

@end
