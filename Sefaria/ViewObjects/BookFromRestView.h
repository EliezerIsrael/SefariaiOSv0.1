//
//  BookFromRest.h
//  Sefaria
//
//  Created by MGM on 8/16/14.
//  Copyright (c) 2014 Test. All rights reserved.
//

#import "MainFoundation.h"

@interface BookFromRestView : MainFoundation  <UIScrollViewDelegate,UITextFieldDelegate>
{
    IBOutlet UITextField *searchNavTextField;
}

@property (weak, nonatomic) IBOutlet UITextField *searchNavTextField;


@end
