//
//  EKKEntryDetailViewController.h
//  Journal-C
//
//  Created by Brooke Kumpunen on 3/25/19.
//  Copyright © 2019 Rund LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EKKEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface EKKEntryDetailViewController : UIViewController

@property (nonatomic, readwrite) EKKEntry *entry;

@end

NS_ASSUME_NONNULL_END
