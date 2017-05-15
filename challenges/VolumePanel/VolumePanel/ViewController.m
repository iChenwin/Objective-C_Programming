//
//  ViewController.m
//  VolumePanel
//
//  Created by wayne on 2017/5/15.
//  Copyright © 2017年 wayne. All rights reserved.
//

#import "ViewController.h"
#import <MediaPlayer/MPVolumeView.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (strong, nonatomic) MPVolumeView *volumeView;
@property (strong, nonatomic) UISlider *volumeViewSlider;
@end

@implementation ViewController
- (IBAction)adjustVolume:(id)sender {
    // change system volume, the value is between 0.0f and 1.0f
    [self.volumeViewSlider setValue:[self.slider value] animated:NO];
    
    // send UI control event to make the change effect right now.
    [self.volumeViewSlider sendActionsForControlEvents:UIControlEventTouchUpInside];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
    if (!self.volumeView) {
        self.volumeView = [[MPVolumeView alloc] initWithFrame:CGRectMake(-1000, -100, 100, 100)];
        
        for (UIView *view in [self.volumeView subviews]) {
            if ([view.class.description isEqualToString:@"MPVolumeSlider"]) {
                self.volumeViewSlider = (UISlider *)view;
                break;
            }
        }
    }
    
    [self.volumeView setFrame:CGRectMake(16, 100, [UIScreen mainScreen].bounds.size.width - 32, 20)];
    [self.view addSubview:self.volumeView];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
