//
//  BJWEntryDetailViewController.h
//  Journal-C
//
//  Created by Bryan Workman on 6/22/20.
//  Copyright © 2020 Bryan Workman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BJWEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface BJWEntryDetailViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *entryTitleTextField;
@property (strong, nonatomic) IBOutlet UITextField *entryBodyTextField;


@property (nonatomic, strong)BJWEntry *entry;

@end

NS_ASSUME_NONNULL_END
