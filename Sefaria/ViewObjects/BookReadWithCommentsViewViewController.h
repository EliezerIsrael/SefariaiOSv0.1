//
//  BookReadWithCommentsViewViewController.h
//  Sefaria
//
//  Created by MGM on 8/12/14.
//  Copyright (c) 2014 Test. All rights reserved.
//

#import "MainFoundation.h"

@interface BookReadWithCommentsViewViewController : MainFoundation <UIScrollViewDelegate,UITextFieldDelegate>
{
    IBOutlet UITextField *searchNavTextField;
}

@property (weak, nonatomic) IBOutlet UITextField *searchNavTextField;

@end
