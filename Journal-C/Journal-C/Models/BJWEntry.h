//
//  BJWEntry.h
//  Journal-C
//
//  Created by Bryan Workman on 6/22/20.
//  Copyright © 2020 Bryan Workman. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BJWEntry : NSObject

@property (nonatomic, copy, readwrite) NSString *title;
@property (nonatomic, copy, readwrite) NSString *body;
@property (nonatomic, copy, readwrite) NSDate *timestamp;

- (instancetype) initWithTitle: (NSString *)title body:(NSString *)body;

@end

NS_ASSUME_NONNULL_END
