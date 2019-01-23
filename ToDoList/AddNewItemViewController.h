//
//  AddNewItemViewController.h
//  ToDoList
//
//  Created by Jenny Chang on 22/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDoItem.h"
#import "DetailedViewController.h"

NS_ASSUME_NONNULL_BEGIN

@class AddNewItemViewController;

@protocol AddNewItemDelegate <NSObject>

-(void)addNewTodo:(ToDoItem *)item;

@end

@interface AddNewItemViewController : UIViewController

@property (nonatomic) NSInteger priorityLevel;
@property (nonatomic) NSString *completeDate;
@property (nonatomic) NSString *activityName;

@property (nonatomic, weak) id <AddNewItemDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
