//
//  DetailViewController.m
//  BookManager
//
//  Created by Anh Minh on 3/9/13.
//  Copyright (c) 2013 FPT. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize book;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UIBarButtonItem *editButton = [[UIBarButtonItem alloc] initWithTitle:@"Edit" style:UIBarButtonItemStylePlain target:self action:@selector(editRow)];
    self.navigationItem.rightBarButtonItem = editButton;

}
- (void) editRow
{
    self.navigationItem.rightBarButtonItem.enabled = NO;
    UIBarButtonItem *updateButton = [[UIBarButtonItem alloc] initWithTitle:@"Update" style:UIBarButtonItemStylePlain target:self action:@selector(updateRow)];
    self.navigationItem.rightBarButtonItem = updateButton;
    self.titleBook.editable = YES;
    self.titleBook.backgroundColor = [UIColor yellowColor];
    self.authorBook.enabled = YES;
    self.authorBook.backgroundColor = [UIColor yellowColor];
    self.descriptionBook.editable = YES;
    self.descriptionBook.backgroundColor = [UIColor yellowColor];
}
- (void) updateRow
{
    book = [[Book alloc] init];
    NSIndexPath *indexPath;
    NSMutableDictionary *bookDictionary = [(NSDictionary *)[book bookItemAtIndex: indexPath.row] mutableCopy];
    [bookDictionary setValue:self.titleBook.text forKey:@"title"];
    [bookDictionary setValue:self.authorBook.text forKey:@"author"];
    [bookDictionary setValue:self.descriptionBook.text forKey:@"description"];
     NSString *dataPath = [[NSBundle mainBundle] pathForResource:@"BookList" ofType:@"plist"];
    
    [bookDictionary writeToFile:dataPath atomically:YES];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) viewWillAppear:(BOOL)animated
{
    self.descriptionBook.editable = NO;
    self.authorBook.enabled = NO;
    NavViewController *navController = (NavViewController*)self.navigationController;
    self.title = @"Book Information";
    if (![self.titleBook.text isEqualToString:@""]) {
        self.titleBook.text = @"";
    }
    self.titleBook.text = navController.bookTitle;
    self.authorBook.text = navController.bookAuthor;
    if (![self.descriptionBook.text isEqualToString:@""]) {
        self.descriptionBook.text = @"";
    }
    self.descriptionBook.text = navController.detailInfo;
}
@end
