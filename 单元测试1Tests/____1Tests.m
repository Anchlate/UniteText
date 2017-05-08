//
//  ____1Tests.m
//  单元测试1Tests
//
//  Created by Qianrun on 16/11/16.
//  Copyright © 2016年 qianrun. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Movie.h"
#import "Demand.h"
#import "Customer.h"

@interface ____1Tests : XCTestCase

@end

@implementation ____1Tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}


- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}


#pragma mark -Private
- (void)testStatement_Regular {
    
    Movie *matrixMovie1 = [[Movie alloc] initWithTitle:@"黑客帝国1"
                                             priceCode:MovieEnumRegular];
    Demand *aDemand1 = [[Demand alloc] initWithMovie:matrixMovie1
                                          timePeriod:TimePeriodEnumWorkDaytime];
    
    // 顾客租赁一部：
    Customer *aCustomer = [[Customer alloc] initCustomerWithName:@"溪石"];
    [aCustomer addDemand:aDemand1];
    
    XCTAssertTrue([@"溪石的点播清单\\\\n"
                   @"\\\\t黑客帝国1\\\\t2 元\\\\n"
                   @"费用总计 2 元\\\\n"
                   @"获得积分 1"
                   isEqualToString:[aCustomer statement]],
                  @"测试点播一部普通电影");
    
}


- (void)testStatement_Weekend {
    Movie *matrixMovie2 = [[Movie alloc] initWithTitle:@"黑客帝国2-重装上阵"
                                             priceCode:MovieEnumRegular];
    Demand *aDemand2 = [[Demand alloc] initWithMovie:matrixMovie2
                                          timePeriod:TimePeriodEnumWeekend];
    
    Customer *aCustomer = [[Customer alloc] initCustomerWithName:@"溪石"];
    [aCustomer addDemand:aDemand2];
    XCTAssertTrue([@"溪石的点播清单\\\\n"
                   @"\\\\t黑客帝国2-重装上阵\\\\t1 元\\\\n"
                   @"费用总计 1 元\\\\n"
                   @"获得积分 1"
                   isEqualToString:[aCustomer statement]],
                  @"测试点播一部普通电影，周末半价");
}


@end
