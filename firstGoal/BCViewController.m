//
//  BCViewController.m
//  firstGoal
//
//  Created by BifidyCAPs on 14/8/19.
//  Copyright (c) 2014年 BifidyCAPs. All rights reserved.
//

#import "BCViewController.h"

@interface BCViewController ()
@property(nonatomic,strong)BCChildController *childVC;
@end

@implementation BCViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    //添加键盘收回
    [self.field addTarget:_field action:@selector(resignFirstResponder) forControlEvents:UIControlEventEditingDidEndOnExit];
    [self.childVC.field addTarget:self.childVC.field action:@selector(resignFirstResponder) forControlEvents:UIControlEventEditingDidEndOnExit];
}

//点击赋值
-(IBAction)click:(id)sender{
    //completion是block参数，在跳转成功后的执行代码
    [self presentViewController:self.childVC animated:YES completion:^{
    self.childVC.label.text = self.field.text;
    }];
}

//作为childVC的代理方法实现
-(void)refresh{
    [self.childVC dismissViewControllerAnimated:YES completion:^{
    self.label.text = self.childVC.field.text;
    }];
}

//延迟实例化，两个效果不同，自己参考~
-(BCChildController *)childVC{
    if(_childVC==nil) {
        _childVC = [self.storyboard instantiateViewControllerWithIdentifier:@"childVC"];
        _childVC.parentView = self;
    }
    return _childVC;
}
/*
//静态单例
-(BCChildController *)childVC{
    static BCChildController *VC = nil;
    if (!VC) {
        VC = [self.storyboard instantiateViewControllerWithIdentifier:@"childVC"];
        VC.parentView = self;
    }
    return VC;
 
}
*/

@end
