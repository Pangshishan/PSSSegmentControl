//
//  ViewController.m
//  PSSSegmentControl
//
//  Created by 庞仕山 on 16/5/20.
//  Copyright © 2016年 庞仕山. All rights reserved.
//

#import "ViewController.h"

#import "PSSSegmentControl.h"

#define kScreenWidth  [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height
#define kScreenSize   [UIScreen mainScreen].bounds.size


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    PSSSegmentControl *segment = [[PSSSegmentControl alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, 50) titleArray:@[@"11111", @"222222", @"33333"]];
    segment.backgroundColor = [UIColor blackColor]; // 控制底部线条的颜色
    segment.lineWidth = 100;
    segment.lineColor = [UIColor orangeColor];
    segment.selectedColor = [UIColor orangeColor]; // 选中字体颜色
    segment.normalColor = [UIColor grayColor]; // 选中字体颜色
    [self.view addSubview:segment];
    
    // 点击button
    [segment setButtonBlock:^(NSInteger index) {
        
    }];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
