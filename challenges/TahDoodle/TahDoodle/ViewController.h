//
//  ViewController.h
//  TahDoodle
//
//  Created by wayne on 2017/5/11.
//  Copyright © 2017年 wayne. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController <NSTableViewDataSource>

@property (nonatomic) NSMutableArray *tasks;

@property (nonatomic) IBOutlet NSTableView *taskTable;

- (IBAction)addTask:(id)sender;

@end

