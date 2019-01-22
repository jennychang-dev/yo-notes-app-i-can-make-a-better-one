//
//  ViewController.m
//  ToDoList
//
//  Created by Jenny Chang on 22/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import "ViewController.h"
#import "ToDoItem.h"
#import "DetailedViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *toDoTableView;
@property (nonatomic) NSMutableArray *toDos;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.toDoTableView.dataSource = self;
    self.toDoTableView.delegate = self;
    
    // set array in viewDidLoad
    self.toDos = [@[
                  [[ToDoItem alloc] initWithActivity:@"Complete police statement" andCompleteBy:@"24/01/2019" andPriorityLevel:5],
                  [[ToDoItem alloc] initWithActivity:@"Submit visa application" andCompleteBy:@"29/01/2019" andPriorityLevel:5],
                  [[ToDoItem alloc] initWithActivity:@"Pick up shit from Purolator by Friday" andCompleteBy:@"25/01/2019" andPriorityLevel:2],
                  [[ToDoItem alloc] initWithActivity:@"Update employment details on student finance" andCompleteBy:@"they don't deserve my time, interest rate hiking sh*ts" andPriorityLevel:2],
                  [[ToDoItem alloc] initWithActivity:@"Return UO package" andCompleteBy:@"31/01/2019" andPriorityLevel:1],
                  [[ToDoItem alloc] initWithActivity:@"Get approval from car2go" andCompleteBy:@"28/02/2019" andPriorityLevel:1],
                  [[ToDoItem alloc] initWithActivity:@"Learn German" andCompleteBy:@"Whenever ya can" andPriorityLevel:4],
                  [[ToDoItem alloc] initWithActivity:@"Buy clothes hangers" andCompleteBy:@"28/01/2019" andPriorityLevel:2],
                  ]
    
                 mutableCopy];
    
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"passInMoreDetail" sender:indexPath];

}

// passing in the sender to show more details
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"preparing for segue");
    
    DetailedViewController *dVC = segue.destinationViewController;
    
    if ([sender isKindOfClass:[NSIndexPath class]]) {
        
        NSIndexPath *indexPath = (NSIndexPath *)sender;
        ToDoItem *item = self.toDos[indexPath.row];
        
        dVC.name = item.activity;
        dVC.date = item.completeDate;
        dVC.level = item.priorityLevel;
    }
    
    
}


- (IBAction)addButtonPressed:(UIBarButtonItem *)sender {
    NSLog(@"tapped");

    // implement a text field for the user to add new activity
    
    
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"toDoCell" forIndexPath:indexPath];
    
    // access each activity in this array using its index
    ToDoItem *eachActivity = self.toDos[indexPath.row];
    
    // set label equal to its activity
    cell.textLabel.text = eachActivity.activity;
    
    return cell;
    
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.toDos.count;
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1; // if I don't want sections, just make this one
    
}


@end
