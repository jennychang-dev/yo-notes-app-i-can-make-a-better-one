//
//  ViewController.h
//  ToDoList
//
//  Created by Jenny Chang on 22/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDoItem.h"
#import "AddNewItemViewController.h"

@interface ViewController : UIViewController <AddNewItemDelegate>

-(void)addNewTodo:(ToDoItem *)item;

@end

