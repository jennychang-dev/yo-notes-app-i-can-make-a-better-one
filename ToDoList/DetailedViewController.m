//
//  DetailedViewController.m
//  ToDoList
//
//  Created by Jenny Chang on 22/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import "DetailedViewController.h"

@interface DetailedViewController ()

@property (weak, nonatomic) IBOutlet UILabel *activityName;
@property (weak, nonatomic) IBOutlet UILabel *completeDate;
@property (weak, nonatomic) IBOutlet UILabel *priorityLevel;


@end

@implementation DetailedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.activityName.text = [NSString stringWithFormat:@"Activity name: %@",self.name];
    self.completeDate.text = [NSString stringWithFormat:@"Complete by: %@", self.date];
    self.priorityLevel.text = [NSString stringWithFormat:@"Priority level: %lu",self.level];
    
}


@end
