//
//  EKKEntryController.h
//  Journal-C
//
//  Created by Brooke Kumpunen on 3/25/19.
//  Copyright © 2019 Rund LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EKKEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface EKKEntryController : NSObject

+ (EKKEntryController *)shared;

@property (nonatomic, readwrite) NSMutableArray<EKKEntry *> *entries;

//MARK: - Methods
- (void)createEntryWithTitle: (NSString *)title bodyText: (NSString *)bodyText timestamp: (NSDate *)timestamp;
-(void)removeEntry:(EKKEntry *)entry;

@end

NS_ASSUME_NONNULL_END
