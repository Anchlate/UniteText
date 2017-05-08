//
//  Movie.m
//  单元测试1
//
//  Created by Qianrun on 16/11/16.
//  Copyright © 2016年 qianrun. All rights reserved.
//

#import "Movie.h"

@implementation Movie

- (id)initWithTitle:(NSString *)title
          priceCode:(int)priceCode {
    self = [super init];
    if (self) {
        _title = title;
        _priceCode = priceCode;
    }
    return self;
}

@end
