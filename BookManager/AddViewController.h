//
//  AddViewController.h
//  BookManager
//
//  Created by Anh Minh on 3/14/13.
//  Copyright (c) 2013 FPT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NavViewController.h"
#import "Book.h"

@interface AddViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextView *titleBook;
@property (strong, nonatomic) IBOutlet UITextField *authorBook;
@property (strong, nonatomic) IBOutlet UITextView *contentBook;

@end
