//
//  BCViewController.m
//  firstGoal
//
//  Created by BifidyCAPs on 14/8/19.
//  Copyright (c) 2014年 BifidyCAPs. All rights reserved.
//

#import "BCViewController.h"

@interface BCViewController ()
@property (nonatomic,weak)IBOutlet UILabel *label;
@property (nonatomic,weak)IBOutlet UITextField *field;
@property(nonatomic,strong)BCViewController *childVC;
@property(nonatomic,weak)BCViewController *parentVC;
@end

@implementation BCViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    //添加键盘收回
    [self.field addTarget:_field action:@selector(resignFirstResponder) forControlEvents:UIControlEventEditingDidEndOnExit];
}

//视图A的点击触发
-(IBAction)clickInParent:(id)sender{
    //completion是block参数，在跳转成功后的执行代码
    [self presentViewController:self.childVC animated:YES completion:^{
    self.childVC.label.text = self.field.text;
    }];
}

//视图B的点击触发
-(IBAction)clickInChild:(id)sender{
    [self dismissViewControllerAnimated:YES completion:^{
    self.parentVC.label.text = self.field.text;
    }];
}

//延迟实例化，两个效果不同，自己参考~
-(BCViewController *)childVC{
    if(_childVC==nil) {
        _childVC = [self.storyboard instantiateViewControllerWithIdentifier:@"childVC"];
        _childVC.parentVC = self;
    }
    return _childVC;
}

//静态单例
/*
-(BCChildController *)childVC{
    static BCChildController *VC = nil;
    if (!VC) {
        VC = [self.storyboard instantiateViewControllerWithIdentifier:@"childVC"];
        VC.parentVC = self;
    }
    return VC;
 
}
*/

@end
