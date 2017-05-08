//
//  Movie.h
//  单元测试1
//
//  Created by Qianrun on 16/11/16.
//  Copyright © 2016年 qianrun. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, MovieEnum) {
    MovieEnumChildrens = 2,
    MovieEnumRegular = 0,
    MovieEnumNewRelease = 1
};

@class Movie;

@interface Movie : NSObject

@property(nonatomic, copy) NSString *title;
@property(nonatomic) int priceCode;

- (id)initWithTitle:(NSString *)title
          priceCode:(int)priceCode;
@end