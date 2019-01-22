//
//  ViewController.m
//  ToDoList
//
//  Created by Jenny Chang on 22/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import "ViewController.h"
#import "ToDoList.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *toDoTableView;
@property (nonatomic) NSMutableArray *toDos;

@end

@implementation ViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    self.toDoTableView.dataSource = self;
    
    // set array in viewDidLoad
    self.toDos = [@[
                  [[ToDoList alloc] initWithActivity:@"Complete police statement"],
                  [[ToDoList alloc] initWithActivity:@"Submit visa application"],
                  [[ToDoList alloc] initWithActivity:@"Pick up shit from Purolator by Friday"],
                  [[ToDoList alloc] initWithActivity:@"Update employment details on student finance"],
                  [[ToDoList alloc] initWithActivity:@"Return UO package"],
                  [[ToDoList alloc] initWithActivity:@"Get approval from car2go"]]
                 mutableCopy];
    
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"toDoCell" forIndexPath:indexPath];
    
    // access each activity in this array using its index
    ToDoList *eachActivity = self.toDos[indexPath.row];
    
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
