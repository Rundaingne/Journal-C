//
//  EKKEntry.m
//  Journal-C
//
//  Created by Brooke Kumpunen on 3/25/19.
//  Copyright © 2019 Rund LLC. All rights reserved.
//

#import "EKKEntry.h"

@implementation EKKEntry

- (instancetype)initWithTitle:(NSString *)title bodyText:(NSString *)bodyText timestamp:(NSDate *)timestamp
{
    self = [super init];
    if (self) {
    _title = title;
    _bodyText = bodyText;
        _timestamp = [[NSDate alloc] init];
    }
    return self;
}

@end
