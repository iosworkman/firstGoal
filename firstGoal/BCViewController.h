//
//  BCViewController.h
//  firstGoal
//
//  Created by BifidyCAPs on 14/8/19.
//  Copyright (c) 2014年 BifidyCAPs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BCChildController.h"
@interface BCViewController : UIViewController<viewDelegate>
@property (nonatomic,weak)IBOutlet UILabel *label;
@property (nonatomic,weak)IBOutlet UITextField *field;
-(IBAction)click:(id)sender;
@end
