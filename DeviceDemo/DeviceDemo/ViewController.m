//
//  ViewController.m
//  DeviceDemo
//
//  Created by sogou-Yan on 17/2/6.
//  Copyright © 2017年 sogou. All rights reserved.
//

#import "ViewController.h"
#import "UIDevice+Category.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat battery = [UIDevice deviceGetBatteryQuantity];
    
    long long memorySize = [UIDevice deviceGetTotalMemorySize];
    
    long long diskSize = [UIDevice deviceGetTotalDiskSize];
    
    long long availableDiskSize = [UIDevice deviceGetAvailableDiskSize];
    
    NSLog(@"\n battery:%f \n memorySize:%lld \n diskSize:%lld \n availableDiskSize:%lld ",battery,memorySize,diskSize,availableDiskSize);
    /**
     battery:100.000000
     memorySize:1048576000
     diskSize:12075704320
     availableDiskSize:3585474560
     */
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
