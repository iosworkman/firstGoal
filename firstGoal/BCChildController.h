//
//  BCChildController.h
//  firstGoal
//
//  Created by ios90 on 14-8-24.
//  Copyright (c) 2014年 BifidyCAPs. All rights reserved.
//
@protocol viewDelegate <NSObject>
-(void)refresh;
@end
#import <UIKit/UIKit.h>

@interface BCChildController : UIViewController
@property (nonatomic,weak)IBOutlet UILabel *label;
@property (nonatomic,weak)IBOutlet UITextField *field;
@property (nonatomic,weak)id<viewDelegate> parentView;
-(IBAction)click:(id)sender;
@end
