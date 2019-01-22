//
//  ToDoList.h
//  ToDoList
//
//  Created by Jenny Chang on 22/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ToDoItem : NSObject

@property (nonatomic) NSString *activity;
@property (nonatomic) NSString *completeDate;
@property (nonatomic) NSInteger priorityLevel;

-(instancetype)initWithActivity:(NSString*)activity
                   andCompleteBy:(NSString*)completeDate
                andPriorityLevel:(NSInteger)priorityLevel;



@end

NS_ASSUME_NONNULL_END
