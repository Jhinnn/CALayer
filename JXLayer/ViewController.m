//
//  ViewController.m
//  JXLayer
//
//  Created by Jhin on 2018/9/4.
//  Copyright © 2018年 Jhin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"CALayer";
    self.edgesForExtendedLayout = UIRectEdgeNone;
    [self.navigationController.navigationBar setTranslucent:NO];
    
    CALayer *layer = [CALayer layer];
    layer.frame = CGRectMake(([UIScreen mainScreen].bounds.size.width - 100)/2, 30, 100, 100);
    layer.backgroundColor = [UIColor redColor].CGColor;
    
    layer.borderColor = [UIColor blackColor].CGColor;
    layer.borderWidth = 2;
    layer.cornerRadius = 4;
    
    
    layer.shadowColor = [UIColor blackColor].CGColor;
    layer.shadowOffset = CGSizeMake(5, 10);
    layer.shadowOpacity = 0.6;
    
    [self.view.layer addSublayer:layer];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
