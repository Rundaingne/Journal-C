//
//  EKKEntryDetailViewController.m
//  Journal-C
//
//  Created by Brooke Kumpunen on 3/25/19.
//  Copyright © 2019 Rund LLC. All rights reserved.
//

#import "EKKEntryDetailViewController.h"
#import "EKKEntry.h"
#import "EKKEntryController.h"

@interface EKKEntryDetailViewController ()

@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *journalEntryTextView;



@end

@implementation EKKEntryDetailViewController

//MARK: - Properties

-(void)setEntry:(EKKEntry *)entry
{
    _entry = entry;
    [self updateViews];
}

-(void)updateViews
{
    self.titleTextField.text = self.entry.title;
    self.journalEntryTextView.text = self.entry.bodyText;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)deleteButtonTapped:(UIButton *)sender {
    //When we tap you, you must empty all the things.
    self.titleTextField.text = @"";
    self.journalEntryTextView.text = @"";
}

- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender {
    //When we tap you, we must update OR create an entry.
    NSString *title = _titleTextField.text;
    NSString *bodyText = _journalEntryTextView.text;
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
//    NSString *newDate = [dateFormatter stringFromDate:_entry.timestamp];
    
    [[EKKEntryController shared] createEntryWithTitle:title bodyText:bodyText timestamp: _entry.timestamp];
    [[self navigationController] popViewControllerAnimated:true];
}

@end
