//
//  Customer.h
//  单元测试1
//
//  Created by Qianrun on 16/11/16.
//  Copyright © 2016年 qianrun. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Demand;
@interface Customer : NSObject
- (id)initCustomerWithName:(NSString *)name;
- (void)addDemand:(Demand *)demand;
- (NSString *)statement;

@end
