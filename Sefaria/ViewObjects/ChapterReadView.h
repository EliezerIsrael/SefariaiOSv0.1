//
//  ChapterReadView.h
//  Sefaria
//
//  Created by MGM on 7/21/14.
//  Copyright (c) 2014 Test. All rights reserved.
//

#import "MainFoundation.h"

@interface ChapterReadView : MainFoundation <UIScrollViewDelegate,UITextFieldDelegate>
{
    IBOutlet UITextField *searchNavTextField;
}

@property (weak, nonatomic) IBOutlet UITextField *searchNavTextField;

@end
