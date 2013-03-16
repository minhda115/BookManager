//
//  Book.h
//  BookManager
//
//  Created by Anh Minh on 3/9/13.
//  Copyright (c) 2013 FPT. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject
{
    @private
    NSString *dataPath;
}

@property (strong, nonatomic) NSMutableArray *data;

- (id) init;
- (void) deleteBookAtIndex:(NSIndexPath*)indexPath;
- (NSDictionary *)bookItemAtIndex:(int)index;
- (NSInteger) totalBook;
- (NSString*) titleBookAtIndex:(NSIndexPath*)indexPath;
- (NSString*) authorBookAtIndex:(NSIndexPath*)indexPath;
- (NSString*) descriptionAtIndex:(NSIndexPath*)indexPath;
- (NSString*) iSBNAtIndex:(NSIndexPath*)indexPath;
@end
