//
//  Book.m
//  BookManager
//
//  Created by Anh Minh on 3/9/13.
//  Copyright (c) 2013 FPT. All rights reserved.
//

#import "Book.h"

@implementation Book
@synthesize data;

- (id) init{
    if (self = [super init]) {
        dataPath = [[NSBundle mainBundle] pathForResource:@"BookList" ofType:@"plist"];
        self.data = [NSMutableArray arrayWithContentsOfFile:dataPath];
    }
    
    return self;
}
/*- (void) dealloc
{
    NSData *newData = [NSPropertyListSerialization dataFromPropertyList:self.data format:NSPropertyListXMLFormat_v1_0 errorDescription:NULL];
    if (newData) {
        [newData writeToFile:dataPath atomically:YES];
    } else {
        NSLog(@"Error writing");
    }
}*/

- (void) print
{
    for (int i = 1; i < [self.data count]; i++) {
        NSDictionary *temp = [self.data objectAtIndex:0];
        NSLog(@"Book %@", [temp valueForKey:@"title"]);
    }
}
- (void) deleteBookAtIndex:(NSIndexPath*)indexPath{
    [self.data removeObjectAtIndex:indexPath.row];
}


- (NSDictionary *)bookItemAtIndex:(int)indexPath{
    return (self.data != nil && [self.data count] > 0 && indexPath< [self.data count])
	? [self.data objectAtIndex:indexPath]
	: nil;
}
   

- (NSInteger) totalBook{
    return (self.data!= nil) ? [self.data count] : 0;
}

- (NSString*) titleBookAtIndex:(NSIndexPath*)indexPath{
    return [[self.data objectAtIndex:indexPath.row] valueForKey:@"title"];
}

- (NSString*) authorBookAtIndex:(NSIndexPath*)indexPath{
    return [[self.data objectAtIndex:indexPath.row] valueForKey:@"author"];

}

- (NSString*) descriptionAtIndex:(NSIndexPath*)indexPath{
    return [[self.data objectAtIndex:indexPath.row] valueForKey:@"description"];
}

- (NSString*) iSBNAtIndex:(NSIndexPath*)indexPath{
    return [[self.data objectAtIndex:indexPath.row] valueForKey:@"ISBN"];

}
@end
