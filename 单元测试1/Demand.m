//
//  Demand.m
//  单元测试1
//
//  Created by Qianrun on 16/11/16.
//  Copyright © 2016年 qianrun. All rights reserved.
//

#import "Demand.h"
#import "Movie.h"

@implementation Demand
- (id)initWithMovie:(Movie *)movie timePeriod:(TimePeriodEnum)timePeriod {
    
    if (self = [super init]) {
        _movie = movie;
        _timePeriod = timePeriod;
    }
    return self;
}
@end
