//
//  TodayViewController.m
//  DemoTodaysExtensions
//
//  Created by volive solutions on 02/08/18.
//  Copyright © 2018 volive solutions. All rights reserved.
//

#import "TodayViewController.h"
#import <NotificationCenter/NotificationCenter.h>

@interface TodayViewController () <NCWidgetProviding>{
@private int * kCellHeight;
@private NSLayoutConstraint *tableViewHeightConstraint;
    
    
}
#define SYSTEM_VERSION_GRATERTHAN_OR_EQUALTO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
@end

@implementation TodayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   // kCellHeight = 90;
    
    
  
        
     
    if(SYSTEM_VERSION_GRATERTHAN_OR_EQUALTO(@"10.0")){
   
        self.extensionContext.widgetLargestAvailableDisplayMode = NCWidgetDisplayModeExpanded;
        //If widgetLargestAvailableDisplayMode is set to .compact, then we won't have Show More/Show Less button
        [_showMoreBtn removeFromSuperview];
        
    }
        else{
            
        }
     
 
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

-(void)widgetActiveDisplayModeDidChange:(NCWidgetDisplayMode)activeDisplayMode withMaximumSize:(CGSize)maxSize{
    
    if (activeDisplayMode == NCWidgetDisplayModeExpanded) {
        self.preferredContentSize = CGSizeMake(0.0, 200.0);
    } else if (activeDisplayMode == NCWidgetDisplayModeCompact) {
        self.preferredContentSize = maxSize;
    }
   
}
- (void)widgetPerformUpdateWithCompletionHandler:(void (^)(NCUpdateResult))completionHandler {
    

    completionHandler(NCUpdateResultNewData);
}


- (IBAction)showMoreBtn_Action:(id)sender {
    NSURL *pjURL = [NSURL URLWithString:@"DemoOnExtension://home"];
    [self.extensionContext openURL:pjURL completionHandler:nil];
//    NSURL *pjURL = [NSURL URLWithString:@"DemoOnExtension"];
//    [self.extensionContext openURL:pjURL completionHandler:nil];
}

@end
