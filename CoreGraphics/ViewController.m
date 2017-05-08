//
//  ViewController.m
//  CoreGraphics
//
//  Created by Apple on 15/9/11.
//  Copyright (c) 2015年 zf. All rights reserved.
//

#import "ViewController.h"
#import "Myview.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    
    self.view=[[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.view.backgroundColor=[UIColor whiteColor];
    
    Myview *myview=[[Myview alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:myview];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
