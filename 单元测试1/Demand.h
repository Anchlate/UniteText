//
//  Demand.h
//  单元测试1
//
//  Created by Qianrun on 16/11/16.
//  Copyright © 2016年 qianrun. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef NS_ENUM(NSUInteger, TimePeriodEnum) {
    TimePeriodEnumWorkDaytime = 1,
    TimePeriodEnumWorkNight = 2,
    TimePeriodEnumWeekend = 3
};

@class Movie;

@interface Demand : NSObject
@property(nonatomic) Movie *movie;
@property(nonatomic, assign) int timePeriod;

- (id)initWithMovie:(Movie *)movie timePeriod:(TimePeriodEnum)timePeriod;

@end