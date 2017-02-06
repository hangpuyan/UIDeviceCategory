//
//  UIDevice+Category.h
//  AudioNote
//
//  Created by sogou-Yan on 17/2/6.
//  Copyright © 2017年 YY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDevice (Category)


/**
 获取iOS设备电池容量

 @return 电池容量
 */
+ (CGFloat)deviceGetBatteryQuantity;


/**
 获取iOS设备内存总容量

 @return 内存总容量
 */
+ (long long)deviceGetTotalMemorySize;

/**
 获取iOS设备磁盘总容量

 @return 磁盘总容量
 */
+ (long long)deviceGetTotalDiskSize;

/**
 获取iOS设备磁盘可用容量

 @return 磁盘可用容量
 */
+ (long long)deviceGetAvailableDiskSize;

@end
