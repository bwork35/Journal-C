//
//  BJWEntryTableViewController.m
//  Journal-C
//
//  Created by Bryan Workman on 6/22/20.
//  Copyright © 2020 Bryan Workman. All rights reserved.
//

#import "BJWEntryTableViewController.h"
#import "BJWEntryController.h"
#import "BJWEntryDetailViewController.h"

@interface BJWEntryTableViewController ()

@end

@implementation BJWEntryTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [BJWEntryController shared].entries.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    
    BJWEntry *entry = BJWEntryController.shared.entries[indexPath.row];
    cell.textLabel.text = entry.title;
    //cell.detailTextLabel.text = entry.timestamp;
    //cell.detailTextLabel.text = []
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        BJWEntry *entryToDelete = BJWEntryController.shared.entries[indexPath.row];
        [BJWEntryController.shared removeEntry:entryToDelete];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"toDetailView"]) {

        NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
        BJWEntry *entry = [BJWEntryController shared].entries[indexPath.row];

        BJWEntryDetailViewController *detailViewController = segue.destinationViewController;
        detailViewController.entry = entry;
    }
}


@end
