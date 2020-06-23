//
//  BJWEntryDetailViewController.m
//  Journal-C
//
//  Created by Bryan Workman on 6/22/20.
//  Copyright © 2020 Bryan Workman. All rights reserved.
//

#import "BJWEntryDetailViewController.h"
#import "BJWEntry.h"
#import "BJWEntryController.h"

@interface BJWEntryDetailViewController ()

@end

@implementation BJWEntryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
    _entryTitleTextField.delegate = self;
}

- (void)updateViews
{
    if (!self.entry) return;

    self.entryTitleTextField.text = self.entry.title;
    self.entryBodyTextField.text = self.entry.body;
}

- (IBAction)saveButtonTapped:(id)sender {
    NSString *entryTitle = _entryTitleTextField.text;
    NSString *bodyText = _entryBodyTextField.text;
    if (_entry) {
        [BJWEntryController.shared updateEntry:_entry body:bodyText title:entryTitle];
    } else {
        [BJWEntryController.shared addEntry:entryTitle body:bodyText];
    }
    [self updateViews];
    [self.navigationController popViewControllerAnimated:true];
}




- (IBAction)clearButtonTapped:(id)sender {
    _entryTitleTextField.text = @"";
    _entryBodyTextField.text = @"";
    [self updateViews];
}

- (void) updateViewsWithEntry:(BJWEntry *)entry
{
    _entryTitleTextField.text = entry.title;
    _entryBodyTextField.text = entry.body;
}



- (BOOL)textFieldShouldReturn:(UITextField *)textField;
{
    [textField resignFirstResponder];
    return true;
}

@end
