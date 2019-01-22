//
//  ToDoList.h
//  ToDoList
//
//  Created by Jenny Chang on 22/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ToDoList : NSObject

@property (nonatomic) NSString *activity;

-(instancetype)initWithActivity:(NSString*)activity;

@end

NS_ASSUME_NONNULL_END
