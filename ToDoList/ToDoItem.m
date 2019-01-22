//
//  ToDoList.m
//  ToDoList
//
//  Created by Jenny Chang on 22/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import "ToDoItem.h"

@implementation ToDoItem

- (instancetype)initWithActivity:(NSString*)activity
                   andCompleteBy:(NSString*)completeDate
                andPriorityLevel:(NSInteger)priorityLevel;
{
    self = [super init];
    
    if (self) {
        
        self.activity = activity;
        self.completeDate = completeDate;
        self.priorityLevel = priorityLevel;
        
    }
    return self;
}


@end
