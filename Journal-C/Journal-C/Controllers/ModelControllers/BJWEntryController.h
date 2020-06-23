//
//  BJWEntryController.h
//  Journal-C
//
//  Created by Bryan Workman on 6/22/20.
//  Copyright © 2020 Bryan Workman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BJWEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface BJWEntryController : NSObject

//S.O.T.
@property (nonatomic, strong) NSMutableArray *entries;

//Shared Instance
+ (BJWEntryController *) shared; 

- (void)addEntry: (NSString *)title body:(NSString *)body;
- (void)removeEntry: (BJWEntry *)entry;
- (void)updateEntry:(BJWEntry *)entry body:(NSString *)body title:(NSString *)title;

@end

NS_ASSUME_NONNULL_END
