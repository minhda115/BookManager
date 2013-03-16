//
//  DetailViewController.h
//  BookManager
//
//  Created by Anh Minh on 3/9/13.
//  Copyright (c) 2013 FPT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NavViewController.h"
#import "Book.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextView *titleBook;
@property (strong, nonatomic) IBOutlet UITextField *authorBook;
@property (strong, nonatomic) IBOutlet UITextView *descriptionBook;
@property (strong, nonatomic) Book *book;
@end
