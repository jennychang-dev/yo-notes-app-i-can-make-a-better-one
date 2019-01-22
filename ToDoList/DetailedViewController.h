//
//  DetailedViewController.h
//  ToDoList
//
//  Created by Jenny Chang on 22/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDoItem.h"

NS_ASSUME_NONNULL_BEGIN

@interface DetailedViewController : UIViewController

//@property ToDoItem *toDoItem;

@property NSString *name;
@property NSString *date;
@property NSInteger level;

@end

NS_ASSUME_NONNULL_END
