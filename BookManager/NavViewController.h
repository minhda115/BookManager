//
//  NavViewController.h
//  BookManager
//
//  Created by Anh Minh on 3/9/13.
//  Copyright (c) 2013 FPT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NavViewController : UINavigationController

@property (strong, nonatomic) NSString* bookTitle;
@property (strong, nonatomic) NSString* bookAuthor;
@property (strong, nonatomic) NSString* detailInfo;

@end
