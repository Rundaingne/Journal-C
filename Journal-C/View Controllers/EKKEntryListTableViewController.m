//
//  EKKEntryListTableViewController.m
//  Journal-C
//
//  Created by Brooke Kumpunen on 3/25/19.
//  Copyright © 2019 Rund LLC. All rights reserved.
//

#import "EKKEntryListTableViewController.h"
#import "EKKEntryController.h"
#import "EKKEntryDetailViewController.h"

@interface EKKEntryListTableViewController ()


@end

@implementation EKKEntryListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
    
-(void)viewWillAppear:(BOOL)animated {
        [super viewWillAppear:true];
    [[self tableView] reloadData];
    
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [[[EKKEntryController shared] entries] count];
}


 - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
     EKKEntry *entry = [[EKKEntryController shared] entries][indexPath.row];
     cell.textLabel.text = entry.title;
     NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
     [dateFormatter setDateFormat:@"yyyy-MM-dd"];
     NSString *newDate = [dateFormatter stringFromDate:entry.timestamp];
     cell.detailTextLabel.text = newDate;
    return cell;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        EKKEntry *entryToRemove = [[EKKEntryController shared] entries][indexPath.row];
        [[EKKEntryController shared] removeEntry:entryToRemove];
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier]  isEqualToString: @"toEntryDetailVC"]) {
        EKKEntryDetailViewController *destinationVC = [segue destinationViewController];
        NSIndexPath *index = [[self tableView] indexPathForSelectedRow];
        destinationVC.entry = [[[EKKEntryController shared] entries] objectAtIndex:index.row];
    }
}
//if ([segue.identifier isEqualToString:@"showRecipeDetail"]) {
//    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
//    RecipeDetailViewController *destViewController = segue.destinationViewController;
//    destViewController.recipeName = [recipes objectAtIndex:indexPath.row];

//MARK: - IBActions
-(IBAction)addButtonTapped:(UIBarButtonItem *)sender
{
   
}

@end
