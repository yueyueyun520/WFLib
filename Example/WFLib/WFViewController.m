//
//  WFViewController.m
//  WFLib
//
//  Created by addy on 04/25/2019.
//  Copyright (c) 2019 addy. All rights reserved.
//

#import "WFViewController.h"
#import <WFLib/WFPickerController.h>


@interface WFViewController ()

@end

@implementation WFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
     [self goFirstView];
    
}
- (void)goFirstView {
    WFPickerController *pick = [[WFPickerController alloc]initWithDefaultViewController];
    [self.view addSubview:pick.view];
    [self addChildViewController:pick];
    [pick didMoveToParentViewController:self];
    [self.view sendSubviewToBack:pick.view];
    [pick gotoFirstView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
