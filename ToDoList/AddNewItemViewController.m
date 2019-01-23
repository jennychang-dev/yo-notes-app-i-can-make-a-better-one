//
//  AddNewItemViewController.m
//  ToDoList
//
//  Created by Jenny Chang on 22/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import "AddNewItemViewController.h"

@interface AddNewItemViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *addActivityName;
@property (weak, nonatomic) IBOutlet UITextField *addDeadline;
@property (weak, nonatomic) IBOutlet UITextField *addPriorityLevel;



@end

@implementation AddNewItemViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.addActivityName.delegate = self;
    self.addDeadline.delegate = self;
    self.addPriorityLevel.delegate = self;
    [self setUpTextField];
    
}

-(void)setUpTextField
{
    self.addActivityName.keyboardType = UIKeyboardTypeDefault;
    self.addActivityName.clearButtonMode = UITextFieldViewModeUnlessEditing;

    self.addDeadline.keyboardType = UIKeyboardTypeDefault;
    self.addDeadline.clearButtonMode = UITextFieldViewModeUnlessEditing;

    self.addPriorityLevel.keyboardType = UIKeyboardTypeNumberPad;
    self.addPriorityLevel.clearButtonMode = UITextFieldViewModeUnlessEditing;

}


- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    if (textField == self.addActivityName) {
        
        self.addActivityName.text = @"";
        
    }
    else if (textField == self.addDeadline)
    {   self.addDeadline.text = @"";
    } else {
        self.addPriorityLevel.text = @"";
    }
    }

- (IBAction)saveChanges:(UIBarButtonItem *)sender {
    
    NSLog(@"saving changes");
    self.activityName = self.addActivityName.text;
    self.completeDate = self.addDeadline.text;
    self.priorityLevel = [self.addPriorityLevel.text integerValue];
    
    ToDoItem *myNewActivity = [[ToDoItem alloc] initWithActivity:self.activityName andCompleteBy:self.completeDate andPriorityLevel:self.priorityLevel];
    
    NSLog(@"my new activity");
    [self.delegate addNewTodo:myNewActivity];

    // goes back to root view controller
    [self.navigationController popToRootViewControllerAnimated:YES];

}



@end
