//
//  EKKEntry.h
//  Journal-C
//
//  Created by Brooke Kumpunen on 3/25/19.
//  Copyright © 2019 Rund LLC. All rights reserved.
//
//Add properties for title, body text, timestamp, and memberwise initializer.

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface EKKEntry : NSObject

@property (nonatomic, copy, readwrite) NSString *title;
@property (nonatomic, copy, readwrite) NSString *bodyText;
@property (nonatomic, copy, readwrite) NSDate *timestamp;

- (instancetype) initWithTitle: (NSString *)title bodyText: (NSString *)bodyText timestamp: (NSDate *)timestamp;

@end

NS_ASSUME_NONNULL_END
