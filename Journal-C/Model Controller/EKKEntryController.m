//
//  EKKEntryController.m
//  Journal-C
//
//  Created by Brooke Kumpunen on 3/25/19.
//  Copyright © 2019 Rund LLC. All rights reserved.
//

#import "EKKEntryController.h"


@implementation EKKEntryController

+ (EKKEntryController *)shared
{
    static EKKEntryController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[EKKEntryController alloc] init];
        shared.entries = [NSMutableArray new];
    });
    return shared;
}

//MARK: - Methods
- (void)createEntryWithTitle: (NSString *)title bodyText: (NSString *)bodyText timestamp: (NSDate *)timestamp
{
//    var entry = Entry(title: title, bodyText: bodyText)
   EKKEntry *entry = [[EKKEntry alloc] initWithTitle:title bodyText:bodyText timestamp:timestamp];
    [self.entries addObject:entry];
}

- (void)removeEntry:(EKKEntry *)entry
{
    [[[EKKEntryController shared] entries] removeObject:entry];
}

@end
