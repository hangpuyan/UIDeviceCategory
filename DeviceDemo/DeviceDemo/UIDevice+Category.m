//
//  UIDevice+Category.m
//  AudioNote
//
//  Created by sogou-Yan on 17/2/6.
//  Copyright © 2017年 YY. All rights reserved.
//

#import "UIDevice+Category.h"
#import <sys/mount.h>

@implementation UIDevice (Category)

+ (CGFloat)deviceGetBatteryQuantity {
    
    [UIDevice currentDevice].batteryMonitoringEnabled = YES;

    return ([[UIDevice currentDevice] batteryLevel]) * 100;
}

+ (long long)deviceGetTotalMemorySize {
    
    return [NSProcessInfo processInfo].physicalMemory;
}

+ (long long)deviceGetTotalDiskSize {
    struct statfs buf;
    unsigned long long freeSpace = -1;
    if (statfs("/var", &buf) >= 0)
    {
        freeSpace = (unsigned long long)(buf.f_bsize * buf.f_blocks);
    }
    return freeSpace;
}

+ (long long)deviceGetAvailableDiskSize {
    struct statfs buf;
    unsigned long long freeSpace = -1;
    if (statfs("/var", &buf) >= 0)
    {
        freeSpace = (unsigned long long)(buf.f_bsize * buf.f_bavail);
    }
    return freeSpace;
}

@end
