//
//  AppDelegate.h
//  iTahDoodle
//
//  Created by wayne on 2017/5/11.
//  Copyright © 2017年 wayne. All rights reserved.
//

#import <UIKit/UIKit.h>

NSString *BNRDocPath(void);

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITableViewDataSource>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic) UITableView *taskTable;
@property (nonatomic) UITextField *taskField;
@property (nonatomic) UIButton    *insertButton;

@property (nonatomic) NSMutableArray *tasks;

- (void)addTask:(id)sender;
@end

