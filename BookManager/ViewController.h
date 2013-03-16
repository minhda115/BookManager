//
//  ViewController.h
//  BookManager
//
//  Created by Anh Minh on 3/9/13.
//  Copyright (c) 2013 FPT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"
#import "AddViewController.h"
#import "NavViewController.h"
#import "Book.h"
@interface ViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;
@property (strong, nonatomic) AddViewController *addViewController;
@property (strong, nonatomic) Book *book;

@end
