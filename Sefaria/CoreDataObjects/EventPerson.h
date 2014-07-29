//
//  EventPerson.h
//  Sefaria
//
//  Created by MGM on 7/24/14.
//  Copyright (c) 2014 Test. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Event;

@interface EventPerson : NSManagedObject

@property (nonatomic, retain) NSString * metaType;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) Event *whatEvent;

@end