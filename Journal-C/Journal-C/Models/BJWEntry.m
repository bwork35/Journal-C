//
//  BJWEntry.m
//  Journal-C
//
//  Created by Bryan Workman on 6/22/20.
//  Copyright © 2020 Bryan Workman. All rights reserved.
//

#import "BJWEntry.h"

@implementation BJWEntry

- (instancetype)initWithTitle:(NSString *)title body:(NSString *)body
{
self = [super init];
    
    if (self) {
        _title = title;
        _body = body;
        _timestamp = [NSDate date];
    }
    
    return self;
}



@end
