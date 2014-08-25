//
//  MainFoundation+BookMarkActions.m
//  Sefaria
//
//  Created by MGM on 8/24/14.
//  Copyright (c) 2014 Test. All rights reserved.
//

#import "MainFoundation+BookMarkActions.h"

@implementation MainFoundation (BookMarkActions)

//
//
////
#pragma mark - bookmark view
////
//
//

- (NSString*) appendBookmarkIcon : (LineText*) myLine withString :(NSString*) myString
{
    if ([myLine.isBookmarked boolValue]){
        myString = [myString stringByAppendingString:@" ✓"];
    }
    return myString;
}

//
//
////
#pragma mark - bookMarkActions
////
//
//

- (void) addBookMarkValueToLineText : (UITableView*) tableView  withIndexPath : (NSIndexPath *)indexPath withContext : (NSManagedObjectContext*) context
{
    if (!self.bookmarkSet) return;
    if ([self.primaryDataArray count] < indexPath.row) return;
    LineText* myLineText = [self.primaryDataArray objectAtIndex:indexPath.row];
    bool isBookMarked = [myLineText.isBookmarked boolValue];
    myLineText.isBookmarked = [NSNumber numberWithBool:!isBookMarked];

    [tableView beginUpdates];
    [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    [tableView endUpdates];
    
    [self saveData:context];
}

- (void) addBookMarkValueToComment : (UITableView*) tableView  withIndexPath : (NSIndexPath *)indexPath withContext : (NSManagedObjectContext*) context
{
    if (!self.bookmarkSet) return;
    if ([self.commentArray count] < indexPath.row) return;
    Comment* myComment = [self.commentArray objectAtIndex:indexPath.row];
    bool isBookMarked = [myComment.isBookmarked boolValue];
    myComment.isBookmarked = [NSNumber numberWithBool:!isBookMarked];
    
    [tableView beginUpdates];
    [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    [tableView endUpdates];
    
    [self saveData:context];
}

@end