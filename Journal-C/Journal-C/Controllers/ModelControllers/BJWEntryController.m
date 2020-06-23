//
//  BJWEntryController.m
//  Journal-C
//
//  Created by Bryan Workman on 6/22/20.
//  Copyright © 2020 Bryan Workman. All rights reserved.
//

#import "BJWEntryController.h"
#import "BJWEntry.h"

@implementation BJWEntryController

+ (BJWEntryController *)shared
{
    static BJWEntryController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{ shared = [BJWEntryController new];
        
    });
    return shared;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _entries = [NSMutableArray new];
    }
    return self;
}

- (void)addEntry:(NSString *)title body:(NSString *)body
{
    BJWEntry *entry = [[BJWEntry alloc] initWithTitle:title body:body];
    
    [_entries addObject: entry];
}

- (void)updateEntry:(BJWEntry *)entry body:(NSString *)body title:(NSString *)title
{
    entry.title = title;
    entry.body = body;
}

- (void)removeEntry:(BJWEntry *)entry
{
    [_entries removeObject:entry]; 
}

@end
