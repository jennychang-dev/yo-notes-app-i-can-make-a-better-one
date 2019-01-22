//
//  ToDoList.m
//  ToDoList
//
//  Created by Jenny Chang on 22/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import "ToDoList.h"

@implementation ToDoList

- (instancetype)initWithActivity:(NSString*)activity
{
    self = [super init];
    if (self) {
        self.activity = activity;
    }
    return self;
}


@end
