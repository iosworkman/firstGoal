//
//  BCChildController.m
//  firstGoal
//
//  Created by ios90 on 14-8-24.
//  Copyright (c) 2014年 BifidyCAPs. All rights reserved.
//

#import "BCChildController.h"

@interface BCChildController ()

@end

@implementation BCChildController
//让代理去实现
-(IBAction)click:(id)sender{
    [self.parentView refresh];
}

- (void)viewDidLoad{
    [super viewDidLoad];
}



@end
